import type { BoardProperties } from "@/constants/BoardProperties";
import type { Guess } from "@/constants/Guess";
import { Board } from "@/engine/Board";
import { Solver } from "./Solver";

export type ReportConfiguration = {
    workers: number,
    numberOfGames: number,
    filename: string
}

type ReportItem = {
    victory: boolean,
    mineCellsFoundRatio: number,
    safeCellsFoundRatio: number,
    aiUpdates: number,
    guesses: Guess[]
    guessFactor: number
}

type Report = {
    boardProperties: BoardProperties,
    victoryRatio: number,
    totalGames: number,
    games: ReportItem[],
    victoryGuessFactorAverage: number,
    lossesMinesCellsFoundRatioAverage: number,
    lossesSafeCellsFoundRatioAverage: number,
    lossesAiUpdatesAverage: number,
    timestamp: number
}

export class ReportGenerator {
    private readonly boardConfiguration: BoardProperties;
    private readonly workers: number;
    private readonly numberOfGames: number;
    private readonly filename?: string;
    public constructor(boardConfiguration: BoardProperties, report?: Partial<ReportConfiguration>) {
        this.boardConfiguration = boardConfiguration
        this.workers = report?.workers || 20
        this.numberOfGames = report?.numberOfGames || 1000
        this.filename = report?.filename
    }

    public async run(): Promise<number> {
        const games = []
        const iterations = this.numberOfGames / this.workers
        for (let iteration = 0; iteration < iterations; ++iteration) {
            const promises: Promise<ReportItem>[] = []
            for (let i = 0; i < this.workers; ++i) {
                promises.push(this.playOneGame())
            }
            games.push(...(await Promise.all(promises)))
            console.log(`Generating report: ${Math.trunc(10000 * games.length / this.numberOfGames) / 100}%`)
        }

        const report: Report = this.generateReport(games)
        this.save(report)

        return Math.trunc(10000 * report.victoryRatio) / 100
    }

    private async playOneGame(): Promise<ReportItem> {
        const totalCells = this.boardConfiguration.height * this.boardConfiguration.width
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
        const validGuesses = solver.guesses
            .filter((item, index) => index > 0 && item.mines > 0)
        solver.terminate()

        const result: ReportItem = {
            victory: board.isGameWon(),
            mineCellsFoundRatio: solver.knownMineCellsIds.length / this.boardConfiguration.mines,
            safeCellsFoundRatio: solver.knownSafeCellsIds.length / totalCells,
            aiUpdates: solver.aiUpdates,
            guesses: validGuesses,
            guessFactor: validGuesses
                .reduce((acc, guess) => {
                    return acc * (guess.mines / guess.cells)
                }, 1)
        }
        return result
    }

    private generateReport(games: ReportItem[]): Report {
        return {
            timestamp: Date.now(),
            boardProperties: this.boardConfiguration,
            games: games,
            victoryRatio: games
                .filter(result => result.victory)
                .length / games.length,
            totalGames: games.length,
            victoryGuessFactorAverage: games
                .reduce((acc, game) => game.victory ? game.guessFactor + acc : acc, 0) / games.length,
            lossesMinesCellsFoundRatioAverage: games
                .reduce((acc, game) => !game.victory ? game.mineCellsFoundRatio + acc : acc, 0) / games.length,
            lossesSafeCellsFoundRatioAverage: games
                .reduce((acc, game) => !game.victory ? game.safeCellsFoundRatio + acc : acc, 0) / games.length,
            lossesAiUpdatesAverage: games
                .reduce((acc, game) => !game.victory ? game.aiUpdates + acc : acc, 0) / games.length,
        }

    }

    private save(report: Report) {
        const a = document.createElement("a");
        const file = new Blob([JSON.stringify(report)], { type: 'text/json' });
        a.href = URL.createObjectURL(file);
        //@ts-expect-error
        report.url = window.location.href;
        a.download = `${this.filename}${report.timestamp}.json`;
        document.body.appendChild(a);
        a.click();
        URL.revokeObjectURL(a.href);
        document.body.removeChild(a);
    }

}