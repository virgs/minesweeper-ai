import { guess, update } from '@/as/build/assembly'
import type { Guess } from '@/constants/Guess'

export enum SolverRequestAction {
    UPDATE,
    GUESS,
}

export type SolverRequest = {
    webworkerId: number
    messageId: number
    action: SolverRequestAction
    board: string
}

export type UpdateResponse = {
    knownMineCellsIds: number[]
    knownSafeCellsIds: number[]
}

export type SolverResponse = {
    messageId: number
    guess?: Guess
    update?: UpdateResponse
}

self.onmessage = (event: MessageEvent<SolverRequest>) => {
    const request = event.data
    try {
        // console.log(`WW ${request.webworkerId} got message: ${request.messageId} ` + SolverRequestAction[request.action])
        switch (request.action) {
            case SolverRequestAction.UPDATE:
                const assemblyScriptUpdateResult: UpdateResponse = JSON.parse(update(request.board))
                const updateResponse: SolverResponse = {
                    messageId: request.messageId,
                    update: assemblyScriptUpdateResult,
                }
                self.postMessage(updateResponse)
                break
            case SolverRequestAction.GUESS:
                const assemblyScriptGuessResult: Guess = JSON.parse(guess(request.board))
                const guessResponse: SolverResponse = {
                    messageId: request.messageId,
                    guess: assemblyScriptGuessResult,
                }

                self.postMessage(guessResponse)
                break
        }
    } catch (exception) {
        console.log(`WW ${request} got exception: ` + SolverRequestAction[request.action])
        console.error(exception)
        self.postMessage(exception)
    }
}
