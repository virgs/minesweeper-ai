import { Board } from './Board'
import { Proposition } from './Proposition'

export class Guess {
    id!: i32
    mines!: i32
    cells!: i32
}
const mainPropositionThreshold: f32 = 0.95

export class MineSweeperSolver {
    private board!: Board
    private mineCellsIds: Array<i32>
    private safeCellsIds: Array<i32>
    private propositions: Proposition[]
    private addedMainProposition: boolean

    public constructor() {
        this.safeCellsIds = []
        this.mineCellsIds = []
        this.propositions = []
        this.addedMainProposition = false
    }

    public initializeIfNot(board: Board): void {
        this.board = board
    }

    public getKnownMineCellsIds(): i32[] {
        return this.mineCellsIds
    }

    public getKnownSafeCellsIds(): i32[] {
        return this.safeCellsIds
    }

    public makeGuess(): Guess {
        const totalCells: i32 = this.board.properties.height * this.board.properties.width
        // None was open. Click in the middle
        if (this.safeCellsIds.length === 0) {
            return {
                id: totalCells / 2,
                mines: this.board.properties.mines,
                cells: this.board.cells.length,
            }
        }

        const notFoundMines = this.board.properties.mines - this.mineCellsIds.length
        const notRevealedCells = this.board.getNotRevealedCells()
        const independentCellsIds: i32[] = []
        for (let i = 0; i < notRevealedCells.length; ++i) {
            const cell = notRevealedCells[i]._id
            if (!this.mineCellsIds.includes(cell) && !this.safeCellsIds.includes(cell)) {
                independentCellsIds.push(notRevealedCells[i]._id)
            }
        }
        // console.log(`notRevealedCells: ${notRevealedCellsIds}`)
        // console.log(`Independent: ${independentCellsIds}`)

        // const remainingProposition = new Proposition('notRevealedCells', notRevealedCellsIds, notFoundMines)
        const independents = new Proposition('*', independentCellsIds, notFoundMines)
        const propositionsPool = this.propositions.concat([independents])
        // const propositionsPool = this.propositions

        let lowestRatio = Infinity
        let lowestRatioId = -1
        for (let i = 0; i < propositionsPool.length; ++i) {
            if (propositionsPool[i].getCells().length > 0) {
                if (propositionsPool[i].getMineRatio() < lowestRatio) {
                    lowestRatio = propositionsPool[i].getMineRatio()
                    lowestRatioId = i
                }
            }
        }

        const lowestRatioProposition = propositionsPool[lowestRatioId]
        // console.log(`Lowest: ${lowestRatioProposition.origin}`)

        return {
            id: lowestRatioProposition.getCells()[
                i32(Math.floor(Math.random() * lowestRatioProposition.getCells().length))
            ],
            mines: lowestRatioProposition.getMines(),
            cells: lowestRatioProposition.getCells().length,
        }
    }

    public updatePropositions(): void {
        // console.log(' ================ UPDATE PROPOSITIONS!! ================')

        this.createNewPropositions()

        let changed: bool = false
        while (!this.isBoardSolved()) {
            let previousKnownCells = this.safeCellsIds.length + this.mineCellsIds.length
            changed = false

            changed = this.removedKnownCellsFromPropositions() || changed
            changed = this.satisfiedPropositionsRemoved() || changed
            changed = this.propositionsCompared() || changed
            changed = this.satisfiedPropositionsRemoved() || changed
            changed = this.checkMainPropositionAddition() || changed
            let currentKnownCells = this.safeCellsIds.length + this.mineCellsIds.length
            if (!changed && previousKnownCells === currentKnownCells) {
                break
            }
        }
        console.log('current propositions: ' + this.propositions.length.toString())
        // for (let i = 0; i < this.propositions.length; ++i) {
        //     const proposition = this.propositions[i]
        //     console.log(proposition.toString())
        // }
    }

    private checkMainPropositionAddition(): boolean {
        const totalCells = this.board.properties.height * this.board.properties.width
        if (!this.addedMainProposition && totalCells - (this.safeCellsIds.length + this.mineCellsIds.length) <= 10) {
            const initialPropositionCells: i32[] = new Array(totalCells)
            for (let i = 0; i < this.board.cells.length; ++i) {
                initialPropositionCells.push(this.board.cells[i]._id)
            }
            this.addedMainProposition = true
            console.log('adding main proposition')
            this.addProposition(new Proposition('*', initialPropositionCells, this.board.properties.mines))
            this.propositionsCompared()
            return true
        }
        return false
    }

    private satisfiedPropositionsRemoved(): bool {
        const previousLength = this.propositions.length
        this.removedKnownCellsFromPropositions()
        const unstatisfiedPropositions: Array<Proposition> = new Array()
        for (let i = 0; i < this.propositions.length; ++i) {
            const proposition = this.propositions[i]
            if (!proposition.isSatisfied() && proposition.getCells().length >= 0) {
                unstatisfiedPropositions.push(proposition)
            } else {
                const cells = proposition.getCells()
                if (proposition.hasNoMine()) {
                    // console.log('e new safe cells discovered: ' + cells.toString())
                    this.addSafeCells(cells)
                } else {
                    // console.log('f new safe cells discovered: ' + cells.toString())
                    this.addMineCells(cells)
                }
            }
        }

        const propositionMap: Map<string, Proposition> = new Map()
        for (let i = 0; i < unstatisfiedPropositions.length; ++i) {
            propositionMap.set(unstatisfiedPropositions[i].hash(), unstatisfiedPropositions[i])
        }

        this.propositions = propositionMap.values()
        const result = this.propositions.length !== previousLength
        return result
    }

    public isBoardSolved(): bool {
        const totalCells = this.board.properties.height * this.board.properties.width
        if (
            this.safeCellsIds.length >= totalCells - this.board.properties.mines ||
            this.mineCellsIds.length >= this.board.properties.mines
        ) {
            return true
        }
        return false
    }

    private createNewPropositions(): void {
        const revealedCells = this.board.getRevealedCells()
        for (let i = 0; i < revealedCells.length; ++i) {
            const cell = revealedCells[i]
            this.addSafeCells([cell._id])
            const adjCells = this.board.getAdjacentCells(cell)
            const adjCellsIds: i32[] = []
            for (let i = 0; i < adjCells.length; ++i) {
                adjCellsIds.push(adjCells[i]._id)
            }
            const newProposition = new Proposition(`${cell._id}`, adjCellsIds, cell.minesCount)
            this.addProposition(newProposition)
        }
    }

    private removedKnownCellsFromPropositions(): bool {
        let result = false

        for (let i = 0; i < this.propositions.length; ++i) {
            const proposition = this.propositions[i]
            if (proposition.isSatisfied()) {
                const satisfiedCells = proposition.getCells()
                if (proposition.hasNoMine()) {
                    // console.log('a new safe cells discovered: ' + satisfiedCells.toString())
                    result = this.addSafeCells(satisfiedCells) || result
                } else {
                    // console.log('b new mine cells discovered: ' + satisfiedCells.toString())
                    result = this.addMineCells(satisfiedCells) || result
                }
            }
        }

        return result
    }

    private addProposition(newProposition: Proposition): boolean {
        newProposition.removeMineCells(this.mineCellsIds)
        newProposition.removeSafeCells(this.safeCellsIds)

        for (let i = 0; i < this.propositions.length; ++i) {
            if (this.propositions[i].isEqual(newProposition)) {
                return false
            }
        }

        // console.log('about to create proposition: ' + newProposition.toString())

        if (newProposition.isSatisfied()) {
            if (newProposition.hasNoMine()) {
                // console.log('c new safe cells discovered: ' + newProposition.getCells().toString())
                return this.addSafeCells(newProposition.getCells())
            } else {
                // console.log('d new mine cells discovered: ' + newProposition.getCells().toString())
                return this.addMineCells(newProposition.getCells())
            }
        }

        // console.log('created proposition: ' + newProposition.toString())
        this.propositions.push(newProposition)
        return true
    }

    private addSafeCells(cellIndexes: i32[]): boolean {
        if (cellIndexes.length <= 0) {
            return false
        }
        let changed = false
        for (let a = 0; a < this.propositions.length; ++a) {
            changed = this.propositions[a].removeSafeCells(cellIndexes) || changed
        }

        const newCells: Array<i32> = []
        for (let i = 0; i < cellIndexes.length; ++i) {
            if (!this.safeCellsIds.includes(cellIndexes[i])) {
                newCells.push(cellIndexes[i])
            }
        }
        this.safeCellsIds = this.safeCellsIds.concat(newCells)
        this.safeCellsIds.sort((a, b) => a - b)

        return changed || newCells.length > 0
    }

    private addMineCells(cellIndexes: i32[]): boolean {
        if (cellIndexes.length <= 0) {
            return false
        }

        let changed = false
        for (let a = 0; a < this.propositions.length; ++a) {
            changed = this.propositions[a].removeMineCells(cellIndexes) || changed
        }

        const newCells: Array<i32> = []
        for (let i = 0; i < cellIndexes.length; ++i) {
            if (!this.mineCellsIds.includes(cellIndexes[i])) {
                newCells.push(cellIndexes[i])
            }
        }

        this.mineCellsIds = this.mineCellsIds.concat(newCells)
        this.mineCellsIds.sort((a, b) => a - b)

        return changed || newCells.length > 0
    }

    private propositionsCompared(): bool {
        let newPropositions: Proposition[] = []
        for (let a = 0; a < this.propositions.length; ++a) {
            for (let b = 0; b < this.propositions.length; ++b) {
                const first = this.propositions[a]
                const second = this.propositions[b]
                if (first.getCells().length <= 0 || second.getCells().length <= 0) {
                    continue
                }
                if (second.isSubSetOf(first)) {
                    newPropositions.push(first.subtractSubset(second))
                } else {
                    if (first.getMines() > second.getMines()) {
                        const overlappingCells = first.getOverlappingCells(second)
                        if (
                            first.getCells().length - overlappingCells.length ===
                            first.getMines() - second.getMines()
                        ) {
                            const remainingCells: i32[] = first.getCellsExcluding(overlappingCells)
                            this.addMineCells(remainingCells)
                        }
                    }
                }
            }
        }

        let changed = false
        for (let i = 0; i < newPropositions.length; ++i) {
            if (this.addProposition(newPropositions[i])) {
                changed = true
            }
        }
        return changed
    }
}
