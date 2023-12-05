import type { Board } from '@/engine/Board';
import type { Guess } from '@/constants/Guess';
import type { SolverRequest, SolverResponse } from './WebWorker';
import Worker from './WebWorker?worker';

export class Solver {
    private readonly worker: Worker;
    private readonly board: Board;
    private _knownSafeCellsIds: number[];
    private _knownMineCellsIds: number[];
    private _guesses: Guess[];

    public constructor(board: Board) {
        this.worker = new Worker()
        this.board = board
        this._knownSafeCellsIds = []
        this._knownMineCellsIds = []
        this._guesses = []
    }

    public async update(): Promise<void> {
        return new Promise((resolve) => {
            this.worker.onmessage = async (event: MessageEvent<SolverResponse>) => {
                this._knownMineCellsIds = event.data.knownMineCellsIds
                this._knownSafeCellsIds = event.data.knownSafeCellsIds
                this._guesses = event.data.guesses
                resolve()
            }

            const request: SolverRequest = {
                board: JSON.stringify(this.board)
            }
            this.worker.postMessage(request)
        })
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