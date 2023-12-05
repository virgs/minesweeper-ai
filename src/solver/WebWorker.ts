import { board } from '@/as/build/assembly'
import type { Guess } from './Guess'

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
    const assemblyScriptResult = board(request.board)
    console.log(assemblyScriptResult)

    const response: SolverResponse = {
        knownMineCellsIds: [],
        knownSafeCellsIds: [],
        guesses: [{ mines: 1, cells: 3 }]
    }
    self.postMessage(response)
}