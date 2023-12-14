// The entry file of your WebAssembly module.
import { JSON } from 'json-as/assembly'
import { Board } from './Board'
import { MineSweeperSolver } from './MineSweeperSolver'
import { PropositionsSolver } from './PropositionsSolver'
import { Proposition } from './Proposition'
import { SolverGuessResponse, SolverUpdateResponse } from './models/SolverResponse'

const ai = new MineSweeperSolver()

export function update(stringifiedBoard: string): string {
    const board = JSON.parse<Board>(stringifiedBoard)
    ai.initializeIfNot(board)

    ai.updatePropositions()
    const safeCells: i32[] = ai.getKnownSafeCellsIds()
    const mineCells: i32[] = ai.getKnownMineCellsIds()

    const response: SolverUpdateResponse = {
        knownMineCellsIds: mineCells,
        knownSafeCellsIds: safeCells,
    }
    return JSON.stringify(response)
}

export function guess(stringifiedBoard: string): string {
    const board = JSON.parse<Board>(stringifiedBoard)
    ai.initializeIfNot(board)
    const guess = ai.makeGuess()

    const response: SolverGuessResponse = {
        id: guess.id,
        mines: guess.mines,
        cells: guess.cells,
    }
    return JSON.stringify(response)
}

export function tests(): void {
    console.log('running tests')
    const a = new Proposition('a', [1, 2, 3], 1)
    const b = new Proposition('b', [2, 3, 4, 5], 2)
    const c = new Proposition('c', [2, 3], 1)
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
    console.log('subtractSubset: (b - c)' + b.subtractSubset(c).toString())

    const d = new Proposition('d', [4], 1)
    const e = new Proposition('e', [3], 0)
    console.log(d.toString())
    console.log(e.toString())
    console.log('d is contradictory: ' + d.isContradictory().toString())
    console.log('e is contradictory: ' + e.isContradictory().toString())

    const ps = new PropositionsSolver()
    ps.addPropositions([a, b, c, d, e])
    ps.solve()
    console.log('ps is contradictory: ' + ps.hasContradictions().toString())
    console.log('ps findings')
    console.log('mines ' + ps.getKnownMineCellsIds().toString())
    console.log('safes ' + ps.getKnownSafeCellsIds().toString())
}
