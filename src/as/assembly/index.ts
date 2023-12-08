// The entry file of your WebAssembly module.
import { JSON } from "json-as/assembly";
import { Board } from "./Board";
import { MineSweeperSolver } from "./MineSweeperSolver";
import { SolverGuessResponse, SolverUpdateResponse } from "./models/SolverResponse";

export function update(stringifiedBoard: string): string {
    const board = JSON.parse<Board>(stringifiedBoard);
    const ai = new MineSweeperSolver(board)

    ai.updatePropositions()
    const safeCells: i32[] = ai.getKnownSafeCellsIds()
    const mineCells: i32[] = ai.getKnownMineCellsIds()

    const response: SolverUpdateResponse = {
        knownMineCellsIds: mineCells,
        knownSafeCellsIds: safeCells
    }
    return JSON.stringify(response)
}

export function guess(stringifiedBoard: string): string {
    const board = JSON.parse<Board>(stringifiedBoard);
    const ai = new MineSweeperSolver(board)

    // ai.updatePropositions()

    const response: SolverGuessResponse = {
        id: 1,
        mines: 2,
        cells: 3
    }
    return JSON.stringify(response)
}