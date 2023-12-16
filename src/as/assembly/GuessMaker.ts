import { Solver } from './Solver'
import { Proposition } from './Proposition'

export class Guess {
    id!: i32
    mines!: i32
    cells!: i32
}

export class GuessMaker {
    private solver: Solver

    public constructor(solver: Solver) {
        this.solver = solver
    }

    public makeGuess(): Guess {
        const board = this.solver.getBoard()
        const totalCells: i32 = board.properties.height * board.properties.width
        // None was open. Click in the middle
        if (this.solver.getKnownSafeCellsIds().length === 0) {
            const middleCellId = board.getCellByLocation((board.properties.width - 1) / 2, (board.properties.height - 1) / 2)._id
            return {
                id: middleCellId,
                mines: board.properties.mines,
                cells: board.cells.length,
            }
        }

        const notFoundMines = board.properties.mines - this.solver.getKnownMineCellsIds().length
        const notRevealedCells = board.getNotRevealedCells()
        const independentCellsIds: i32[] = []
        for (let i = 0; i < notRevealedCells.length; ++i) {
            const cell = notRevealedCells[i]._id
            if (
                !this.solver.getKnownMineCellsIds().includes(cell) &&
                !this.solver.getKnownSafeCellsIds().includes(cell)
            ) {
                independentCellsIds.push(notRevealedCells[i]._id)
            }
        }
        const independents = new Proposition('*', independentCellsIds, notFoundMines)
        const propositionsPool = this.solver.getPropositions().concat([independents])

        let lowestRatio = Infinity
        let lowestRatioIndex = -1
        for (let i = 0; i < propositionsPool.length; ++i) {
            if (propositionsPool[i].getCells().length > 0) {
                if (propositionsPool[i].getMineRatio() < lowestRatio) {
                    lowestRatio = propositionsPool[i].getMineRatio()
                    lowestRatioIndex = i
                }
            }
        }

        if (lowestRatioIndex < 0 || lowestRatioIndex >= propositionsPool.length) {
            console.log(`lowestRatioIndex out of range: ${lowestRatioIndex} (${propositionsPool.length})`)
        }
        const lowestRatioProposition = propositionsPool[lowestRatioIndex]

        return {
            id: lowestRatioProposition.getCells()[
                i32(Math.floor(Math.random() * lowestRatioProposition.getCells().length))
            ],
            mines: lowestRatioProposition.getMines(),
            cells: lowestRatioProposition.getCells().length,
        }
    }
}
