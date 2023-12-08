// The entry file of your WebAssembly module.
import { JSON } from "json-as/assembly";
import { Board } from "./Board";
import { MineSweeperSolver } from "./MineSweeperSolver";
import { SolverResponse } from "./models/SolverResponse";

export function processBoard(text: string): string {
    const board = JSON.parse<Board>(text);
    const ai = new MineSweeperSolver(board)

    ai.updatePropositions()
    const safeCells: i32[] = ai.getKnownSafeCellsIds()
    const mineCells: i32[] = ai.getKnownMineCellsIds()

    const response: SolverResponse = {
        knownMineCellsIds: mineCells,
        knownSafeCellsIds: safeCells,
        guesses: []
    }
    return JSON.stringify(response)
}