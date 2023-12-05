import { board } from '@/as/build/assembly'
import type { Guess } from '../constants/Guess'

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
    const assemblyScriptResult: SolverResponse = JSON.parse(board(request.board))
    self.postMessage(assemblyScriptResult)
}