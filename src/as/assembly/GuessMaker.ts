import { Solver } from './Solver'
import { Proposition } from './Proposition'

export class Guess {
    id!: i32
    mines!: i32
    cells!: i32
}

class Relevance {
    id!: i32
    relevanceSum!: f32
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
            return this.pickMiddleCell()
        }
        if (this.solver.getPropositions().length === 0) {
            return this.pickAnyNotRevaledCell()
        }

        return this.pickLessRelevant()
    }
    private pickLowestRatio(): Guess {
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
        const independents = new Proposition('*', independentCellsIds, notFoundMines)
        const propositionsPool = this.solver.getPropositions().concat([independents])

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
    private pickMostRelevant(): Guess {
        const relevanceMap: Map<i32, Relevance> = this.buildRelevanceMap()

        let lowestRelevance = -Infinity
        let lowestRelevanceIndex = -1
        for (let i = 0; i < relevanceMap.values().length; ++i) {
            const item = relevanceMap.values()[i]
            if (item.relevanceSum > lowestRelevance) {
                lowestRelevance = item.relevanceSum
                lowestRelevanceIndex = item.id
            }
        }

        const mostRelevant = relevanceMap.get(lowestRelevanceIndex)
        return {
            id: mostRelevant.id,
            mines: mostRelevant.mines,
            cells: mostRelevant.cells,
        }
    }
    private pickLessRelevant(): Guess {
        const relevanceMap: Map<i32, Relevance> = this.buildRelevanceMap()

        let lowestRelevance = Infinity
        let lowestRelevanceIndex = -1
        for (let i = 0; i < relevanceMap.values().length; ++i) {
            const item = relevanceMap.values()[i]
            if (item.relevanceSum < lowestRelevance) {
                lowestRelevance = item.relevanceSum
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
    private buildRelevanceMap(): Map<i32, Relevance> {
        const propositions = this.solver.getPropositions()
        const relevanceMap: Map<i32, Relevance> = new Map()
        for (let i = 0; i < propositions.length; ++i) {
            const proposition = propositions[i]
            const propositionCells = proposition.getCells()
            for (let j = 0; j < propositionCells.length; ++j) {
                const cell = propositionCells[j]
                if (!relevanceMap.has(cell)) {
                    relevanceMap.set(cell, {
                        id: cell,
                        relevanceSum: proposition.getMineRatio(),
                        mines: proposition.getMines(),
                        cells: propositionCells.length,
                    })
                } else {
                    const item = relevanceMap.get(cell)
                    item.cells += propositionCells.length
                    item.relevanceSum += proposition.getMineRatio()
                    item.mines += proposition.getMines()
                }
            }
        }
        return relevanceMap
    }

    private pickMiddleCell(): Guess {
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
