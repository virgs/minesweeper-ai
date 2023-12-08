import { guess, update } from '@/as/build/assembly'

export enum SolverRequestAction {
    UPDATE,
    GUESS
}

export type SolverRequest = {
    action: SolverRequestAction,
    board: string
}

export type SolverUpdateResponse = {
    knownMineCellsIds: number[],
    knownSafeCellsIds: number[],
}

export type SolverGuessResponse = {
    id: number;
    mines: number;
    cells: number;
}

self.onmessage = async (event: MessageEvent<SolverRequest>) => {
    try {
        const request = event.data
        switch (request.action) {
            case SolverRequestAction.UPDATE:
                const assemblyScriptUpdateResult: SolverUpdateResponse = JSON.parse(update(request.board))
                self.postMessage(assemblyScriptUpdateResult)
                break;
            case SolverRequestAction.GUESS:
                const assemblyScriptGuessResult: SolverGuessResponse = JSON.parse(guess(request.board))
                self.postMessage(assemblyScriptGuessResult)
                break;
        }
    } catch (exception) {
        console.log(exception)
        self.postMessage(exception)
    }
}