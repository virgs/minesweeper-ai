import type { BoardProperties } from '@/constants/BoardProperties';
import type { Board } from '@/engine/Board';
import Worker from './WebWorker?worker';
import { SolverRequestAction, type SolverGuessResponse, type SolverUpdateResponse, type SolverRequest } from './WebWorker';

type Model = {
    properties: BoardProperties,
    cells: {
        _id: number,
        minesCount?: number,
        revealed: boolean,
    }[]
}

export class Solver {
    private readonly worker: Worker;
    private readonly board: Board;
    private _knownSafeCellsIds: number[];
    private _knownMineCellsIds: number[];
    private _guesses: SolverGuessResponse[];

    public constructor(board: Board) {
        this.worker = new Worker()
        this.board = board
        this._knownSafeCellsIds = []
        this._knownMineCellsIds = []
        this._guesses = []
    }

    public async update(): Promise<void> {
        return new Promise((resolve) => {
            this.worker.onmessage = async (event: MessageEvent<SolverUpdateResponse>) => {
                this._knownMineCellsIds = event.data.knownMineCellsIds
                this._knownSafeCellsIds = event.data.knownSafeCellsIds
                console.log('update response', event.data)
                resolve()
            }

            const model = this.createModel()

            const request: SolverRequest = {
                action: SolverRequestAction.UPDATE,
                board: JSON.stringify(model)
            }
            this.worker.postMessage(request)
        })
    }

    public makeGuess(): Promise<void> {
        return new Promise((resolve) => {
            this.worker.onmessage = async (event: MessageEvent<SolverGuessResponse>) => {
                console.log('guess response', event.data)
                this._guesses.push(event.data)
                resolve()
            }

            const model = this.createModel()

            const request: SolverRequest = {
                action: SolverRequestAction.GUESS,
                board: JSON.stringify(model)
            }

            this.worker.postMessage(request)
        })
    }

    private createModel(): Model {
        return {
            properties: this.board.properties,
            cells: this.board.cells
                .map(cell => ({
                    _id: cell.id,
                    minesCount: cell.isRevealed() ? cell.minesAround : undefined,
                    revealed: cell.isRevealed()
                }))
        }
    }

    public get knownSafeCellsIds(): number[] {
        return this._knownSafeCellsIds;
    }
    public get knownMineCellsIds(): number[] {
        return this._knownMineCellsIds;
    }
    public get guesses(): Guess[] {
        return this._guesses;
    }

}