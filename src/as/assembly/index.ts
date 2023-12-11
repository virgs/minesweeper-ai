// The entry file of your WebAssembly module.
import { JSON } from "json-as/assembly";
import { Board } from "./Board";
import { MineSweeperSolver } from "./MineSweeperSolver";
import { Proposition } from './Proposition';
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
    ai.updatePropositions()
    const guess = ai.makeGuess()

    const response: SolverGuessResponse = {
        id: guess.id,
        mines: guess.mines,
        cells: guess.cells
    }
    return JSON.stringify(response)
}

export function tests(): void {
    console.log('running tests')
    const a = new Proposition('a', [1, 2, 3], 1)
    const b = new Proposition('b', [2, 3, 4, 5], 2)
    const c = new Proposition('c', [2, 5], 1)
    console.log(a.toString())
    console.log(b.toString())
    console.log(c.toString())
    console.log('overlapping: (a,b)' + a.getOverlappingCells(b).toString())
    console.log('overlapping: (a,c)' + a.getOverlappingCells(c).toString())
    console.log('overlapping: (b,c)' + b.getOverlappingCells(c).toString())
    console.log('subset: (a isso b)' + a.isSubSetOf(b).toString())
    console.log('subset: (a isso c)' + a.isSubSetOf(c).toString())
    console.log('subset: (b isso c)' + b.isSubSetOf(c).toString())
    console.log('subset: (c isso b)' + c.isSubSetOf(b).toString())

    console.log(b.subtractSubset(c).toString())
    // console.log(b.subtract(a).toString())
}