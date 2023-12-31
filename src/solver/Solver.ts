import type { BoardProperties } from '@/constants/BoardProperties'
import type { Guess } from '@/constants/Guess'
import type { Board } from '@/engine/Board'
import { SolverRequestAction, type SolverRequest, type SolverResponse } from './WebWorker'
import Worker from './WebWorker?worker'

type Model = {
    properties: BoardProperties
    cells: {
        _id: number
        minesCount?: number
        revealed: boolean
    }[]
}

export class Solver {
    private static solversCounter: number = 0
    private readonly solverId: number = Solver.solversCounter++
    private readonly worker: Worker
    private readonly board: Board
    private readonly promisesResolves: any[]
    private readyPromiseResolve: Promise<void>
    private _knownSafeCellsIds: number[]
    private _knownMineCellsIds: number[]
    private _guesses: Guess[]
    private _AiUpdates: number

    public constructor(board: Board) {
        this.worker = new Worker()
        this.readyPromiseResolve = new Promise<void>((resolve) => {
            this.worker.onmessage = (event: MessageEvent) => {
                this.createWorkerHooks()
                resolve()
            }
        })

        this.board = board
        this._AiUpdates = 0
        this._knownSafeCellsIds = []
        this._knownMineCellsIds = []
        this._guesses = []
        this.promisesResolves = []
    }

    public async waitUntilItsReady(): Promise<void> {
        return this.readyPromiseResolve
    }

    public get aiUpdates(): number {
        return this._AiUpdates
    }

    public terminate(): void {
        this.worker.terminate()
    }

    public async process(): Promise<void> {
        return new Promise((resolve) => {
            ++this._AiUpdates
            const model = this.createModel()

            const request: SolverRequest = {
                webworkerId: this.solverId,
                action: SolverRequestAction.UPDATE,
                board: JSON.stringify(model),
                messageId: this.promisesResolves.length,
            }
            this.promisesResolves.push(resolve)
            this.worker.postMessage(request)
        })
    }

    public makeGuess(): Promise<Guess> {
        return new Promise((resolve) => {
            const model = this.createModel()

            const request: SolverRequest = {
                webworkerId: this.solverId,
                action: SolverRequestAction.GUESS,
                board: JSON.stringify(model),
                messageId: this.promisesResolves.length,
            }
            this.promisesResolves.push(resolve)

            this.worker.postMessage(request)
        })
    }

    private createWorkerHooks() {
        this.worker.onerror = async (event) => console.error(event)
        this.worker.onmessage = async (event: MessageEvent<SolverResponse>) => {
            if (event.data.update) {
                this._knownMineCellsIds = event.data.update.knownMineCellsIds
                this._knownSafeCellsIds = event.data.update.knownSafeCellsIds
                this.promisesResolves[event.data.messageId](event.data.update)
            } else if (event.data.guess) {
                this._guesses.push(event.data.guess)
                this.promisesResolves[event.data.messageId](event.data.guess)
            }
        }
    }

    private createModel(): Model {
        return {
            properties: this.board.properties,
            cells: this.board.cells.map((cell) => ({
                _id: cell.id,
                minesCount: cell.isRevealed() ? cell.minesAround : undefined,
                revealed: cell.isRevealed(),
            })),
        }
    }

    public get knownSafeCellsIds(): number[] {
        return this._knownSafeCellsIds
    }
    public get knownMineCellsIds(): number[] {
        return this._knownMineCellsIds
    }
    public get guesses(): Guess[] {
        return this._guesses
    }
}
