import type { BoardProperties } from "@/constants/BoardProperties";
import { Board } from "@/engine/Board";
import { Solver } from "./Solver";
import type { Guess } from "@/constants/Guess";

export type ReportConfiguration = {
    workers: number,
    numberOfGames: number
}

export type ReportItem = {
    victory: boolean,
    mineCellsFound: number[],
    safeCellsFound: number[],
    updates: number,
    guesses: Guess[]
}

export class ReportGenerator {
    private readonly boardConfiguration: BoardProperties;
    private readonly workers: number;
    private readonly numberOfGames: number;
    public constructor(boardConfiguration: BoardProperties, report?: Partial<ReportConfiguration>) {
        this.boardConfiguration = boardConfiguration
        this.workers = report?.workers || 20
        this.numberOfGames = report?.numberOfGames || 1000
    }

    public async run(): Promise<number> {
        let victoriesCounter: number = 0;
        let gamesCounter = 0;
        const iterations = this.numberOfGames / this.workers
        for (let iteration = 0; iteration < iterations; ++iteration) {
            const promises: Promise<ReportItem>[] = []
            for (let i = 0; i < this.workers; ++i) {
                ++gamesCounter
                promises.push(this.playAGame())
            }
            victoriesCounter += (await Promise.all(promises))
                .filter(result => result.victory)
                .length
            console.log('iteration ', 100 * gamesCounter / this.numberOfGames, victoriesCounter, gamesCounter)
        }

        return victoriesCounter / gamesCounter
    }

    private async playAGame(): Promise<ReportItem> {
        const board = new Board(this.boardConfiguration)
        const solver = new Solver(board)
        await solver.waitUntilItsReady()

        const initializationClick = await solver.makeGuess()
        board.initializeMinesAroundCell(board.getCellById(initializationClick.id)!)

        while (!board.isGameFinished()) {
            await solver.process()
            const cellsToReveal = solver.knownSafeCellsIds.filter((cell) => board.cells[cell].isNotRevealed())
            if (cellsToReveal.length > 0) {
                cellsToReveal.forEach((cell) => board.revealCell(board.getCellById(cell)!))
            } else {
                const guess = await solver.makeGuess()
                board.revealCell(board.getCellById(guess.id)!)
            }
        }
        solver.terminate()
        const result: ReportItem = {
            victory: board.isGameWon(),
            mineCellsFound: solver.knownMineCellsIds,
            safeCellsFound: solver.knownSafeCellsIds,
            updates: solver.updates,
            guesses: solver.guesses
        }
        return result
    }

}