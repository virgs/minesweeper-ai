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
        const remainingProposition = this.buildRemainingProposition()

        if (this.solver.getKnownSafeCellsIds().length === 0) {
            return this.pickCenterCell()
        }

        if (this.solver.getPropositions().length === 0) {
            return this.pickRandomCell()
        }

        const propositionsPool = this.solver.getPropositions().concat([remainingProposition])

        const lessRelevant = this.pickLessRelevant(propositionsPool)
        const lessRelevantMineRatio = lessRelevant.relevanceSum / f32(lessRelevant.appearences) // arithmetic average

        if (lessRelevantMineRatio <= remainingProposition.getMineRatio()) {
            return {
                id: lessRelevant.id,
                mines: lessRelevant.mines,
                cells: lessRelevant.cells,
            }
        } else {
            return this.pickRandomCell()
        }
    }

    private pickRandomCell(): Guess {
        const board = this.solver.getBoard()

        if (board.getNotRevealedCorners().length > 0) {
            return this.pickAnyCorner()
        } else if (board.getNotRevealedEdges().length > 0) {
            return this.pickAnyEdge()
        }
        return this.pickAnyNotRevaledCell()
    }

    private pickAnyCorner(): Guess {
        const board = this.solver.getBoard()
        const notFoundMines = board.properties.mines - this.solver.getKnownMineCellsIds().length
        const notRevealedCells = board.getNotRevealedCells()
        const corners = board.getNotRevealedCorners()
        return {
            id: corners[i32(Math.floor(Math.random() * corners.length))]._id,
            mines: notFoundMines,
            cells: notRevealedCells.length,
        }
    }

    private pickAnyEdge(): Guess {
        const board = this.solver.getBoard()
        const notFoundMines = board.properties.mines - this.solver.getKnownMineCellsIds().length
        const notRevealedCells = board.getNotRevealedCells()
        const edges = board.getNotRevealedEdges()
        return {
            id: edges[i32(Math.floor(Math.random() * edges.length))]._id,
            mines: notFoundMines,
            cells: notRevealedCells.length,
        }
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

    private pickLessRelevant(propositions: Proposition[]): Relevance {
        const relevanceMap: Map<i32, Relevance> = this.buildRelevanceMap(propositions)

        let lowestRelevance = Infinity
        let lowestRelevanceIndex = -1
        for (let i = 0; i < relevanceMap.values().length; ++i) {
            const item = relevanceMap.values()[i]
            const average = item.appearences /// f32(item.appearences) // arithmetic average
            // const average = item.relevanceProduct ** (1 / f32(item.appearences)) // geometric average
            if (average < lowestRelevance || (average === lowestRelevance && Math.random() > 0.25)) {
                lowestRelevance = average
                lowestRelevanceIndex = item.id
            }
        }

        return relevanceMap.get(lowestRelevanceIndex)
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
