import { processBoard } from '@/as/build/assembly'
import type { Guess } from '@/constants/Guess'

export type SolverRequest = {
    board: string
}

export type SolverResponse = {
    knownMineCellsIds: number[],
    knownSafeCellsIds: number[],
    guesses: Guess[]
}

self.onmessage = async (event: MessageEvent<SolverRequest>) => {
    const request = event.data
    try {
        const assemblyScriptResult: SolverResponse = JSON.parse(processBoard(request.board))
        self.postMessage(assemblyScriptResult)
    } catch (exception) {
        console.log(exception)
        self.postMessage(exception)
    }
}