import { Solver } from './Solver'
import { Proposition } from './Proposition'

export class Guess {
    id!: i32
    mines!: i32
    cells!: i32
}

class Relevance {
    id!: i32
    appearences!: i32
    relevanceSum!: f32
    relevanceProduct!: f32
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
        if (this.solver.getKnownSafeCellsIds().length === 0) {
            return this.pickCenterCell()
        }
        if (this.solver.getPropositions().length === 0) {
            return this.pickAnyNotRevaledCell()
        }

        const remainingProposition = this.buildRemainingProposition()
        const propositionsPool = this.solver.getPropositions().concat([remainingProposition])

        return this.pickLessRelevant(propositionsPool)
    }

    private buildRemainingProposition(): Proposition {
        const board = this.solver.getBoard()
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
        return new Proposition('*', independentCellsIds, notFoundMines)
    }

    private pickLowestRatio(propositionsPool: Proposition[]): Guess {
        let lowestRatio = Infinity
        let lowestRatioIndex = -1
        for (let i = 0; i < propositionsPool.length; ++i) {
            if (propositionsPool[i].getMineRatio() < lowestRatio) {
                lowestRatio = propositionsPool[i].getMineRatio()
                lowestRatioIndex = i
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

    private pickAnyNotRevaledCell(): Guess {
        const board = this.solver.getBoard()
        const notFoundMines = board.properties.mines - this.solver.getKnownMineCellsIds().length

        const notRevealedCells = board.getNotRevealedCells()

        return {
            id: notRevealedCells[i32(Math.floor(Math.random() * notRevealedCells.length))]._id,
            mines: notFoundMines,
            cells: notRevealedCells.length,
        }
    }

    private pickLessRelevant(propositions: Proposition[]): Guess {
        const relevanceMap: Map<i32, Relevance> = this.buildRelevanceMap(propositions)

        let lowestRelevance = Infinity
        let lowestRelevanceIndex = -1
        for (let i = 0; i < relevanceMap.values().length; ++i) {
            const item = relevanceMap.values()[i]
            const average = item.relevanceSum / f32(item.appearences) // arithmetic average
            // const average = item.relevanceProduct ** (1 / f32(item.appearences)) // geometric average
            if (average < lowestRelevance) {
                lowestRelevance = average
                lowestRelevanceIndex = item.id
            }
        }

        const lowestRelevant = relevanceMap.get(lowestRelevanceIndex)
        return {
            id: lowestRelevant.id,
            mines: lowestRelevant.mines,
            cells: lowestRelevant.cells,
        }
    }
    private buildRelevanceMap(propositions: Proposition[]): Map<i32, Relevance> {
        const relevanceMap: Map<i32, Relevance> = new Map()
        for (let i = 0; i < propositions.length; ++i) {
            const proposition = propositions[i]
            const propositionCells = proposition.getCells()
            for (let j = 0; j < propositionCells.length; ++j) {
                const cell = propositionCells[j]
                if (!relevanceMap.has(cell)) {
                    relevanceMap.set(cell, {
                        id: cell,
                        appearences: 1,
                        relevanceSum: proposition.getMineRatio(),
                        relevanceProduct: proposition.getMineRatio(),
                        mines: proposition.getMines(),
                        cells: propositionCells.length,
                    })
                } else {
                    const item = relevanceMap.get(cell)
                    item.appearences += 1
                    item.cells += propositionCells.length
                    item.relevanceSum += proposition.getMineRatio()
                    item.relevanceProduct *= proposition.getMineRatio()
                    item.mines += proposition.getMines()
                }
            }
        }
        return relevanceMap
    }

    private pickCenterCell(): Guess {
        const board = this.solver.getBoard()
        const middleCellId = board.getCellByLocation(
            (board.properties.width - 1) / 2,
            (board.properties.height - 1) / 2
        )._id
        return {
            id: middleCellId,
            mines: board.properties.mines,
            cells: board.cells.length,
        }
    }
}
