import { Board } from './Board'
import { Cell } from './models/Cell'
import { Proposition } from './Proposition'

const mainPropositionThreshold: f32 = 0.85

export class MineSweeperSolver {
    private readonly board: Board
    private readonly totalCells: i32
    private mineCellsIds: Array<i32>
    private safeCellsIds: Array<i32>
    private propositions: Proposition[]
    private addedMainProposition: boolean

    public constructor(board: Board) {
        this.board = board
        this.safeCellsIds = []
        this.mineCellsIds = []
        this.propositions = []
        this.addedMainProposition = false
        this.totalCells = this.board.properties.height * this.board.properties.width
    }

    public getKnownMineCellsIds(): i32[] {
        return this.mineCellsIds;
    }

    public getKnownSafeCellsIds(): i32[] {
        return this.safeCellsIds;
    }

    public selectUnrevealedSafeCell(): Cell[] {
        return this.board.getNotRevealedCells().filter((cell) => this.safeCellsIds.includes(cell._id))
    }

    public selectLowestChanceCell(): i32 {
        let lowetRatioPropositionIndex = -1
        this.propositions.reduce((lowestMineRatio, proposition, index) => {
            const mineRation = proposition.getMineRatio()
            if (mineRation < lowestMineRatio) {
                lowetRatioPropositionIndex = index
                lowestMineRatio = mineRation
            }
            return lowestMineRatio
        }, Infinity)
        if (lowetRatioPropositionIndex >= 0) {
            const selectedProposition = this.propositions[lowetRatioPropositionIndex]
            console.log(
                'Going luck based: ' +
                selectedProposition.toString() +
                ' ' +
                Math.trunc(selectedProposition.getMineRatio() * 10000) / 100 +
                '%'
            )
            return selectedProposition.getRandomCell()
        }
        console.log('Going blind')
        const unsafeCells: Cell[] = this.board.cells
            .filter(cell => !this.safeCellsIds.includes(cell._id))
            .filter(cell => !this.mineCellsIds.includes(cell._id))
        return unsafeCells[Math.floor(Math.random() * unsafeCells.length)]._id
    }

    public updatePropositions(): void {
        this.createNewPropositions()

        let changed: bool = false;
        let notChangedIterationsCounter: number = 0;
        while (!this.isBoardSolved()) {
            let previousKnownCells = this.safeCellsIds.length + this.mineCellsIds.length
            changed = false

            changed = this.removedKnownCellsFromPropositions() || changed
            changed = this.propositionsCompared() || changed
            changed = this.satisfiedPropositionsRemoved() || changed
            // changed = this.checkMainPropositionAddition() || changed
            let currentKnownCells = this.safeCellsIds.length + this.mineCellsIds.length
            if (!changed && previousKnownCells === currentKnownCells) {
                ++notChangedIterationsCounter
                if (notChangedIterationsCounter > 5) {
                    break
                }
            } else {
                if (notChangedIterationsCounter > 0) {
                    console.log('notChangedIterationsCounter: ' + notChangedIterationsCounter.toString())
                }
                notChangedIterationsCounter = 0
            }
        }
        console.log('current propositions: ' + this.propositions.length.toString())
        for (let i = 0; i < this.propositions.length; ++i) {
            const proposition = this.propositions[i]
            console.log(proposition.toString())
        }
        console.log('============\ncurrent propositions: ' + this.propositions.length.toString())
        const ratio: f32 = f32(this.safeCellsIds.length + this.mineCellsIds.length) / f32(this.totalCells);
        console.log('not revealed ratio: ' + ratio.toString())
    }

    private checkMainPropositionAddition(): boolean {
        const ratio: f32 = f32(this.safeCellsIds.length + this.mineCellsIds.length) / f32(this.totalCells);
        if (!this.addedMainProposition && ratio > mainPropositionThreshold) {
            const initialPropositionCells: i32[] = new Array(this.totalCells)
            for (let i = 0; i < this.board.cells.length; ++i) {
                initialPropositionCells.push(this.board.cells[i]._id)
            }
            this.addedMainProposition = true
            this.addProposition(new Proposition('(initial)', initialPropositionCells, this.board.properties.mines))
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
                    this.addSafeCells(cells)
                } else {
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
        if (this.safeCellsIds.length < this.totalCells - this.board.properties.mines &&
            this.mineCellsIds.length < this.board.properties.mines) {
            return false
        }
        for (let i = 0; i < this.board.cells.length; ++i) {
            const cell = this.board.cells[i]
            if (!this.safeCellsIds.includes(cell._id)) {
                this.addMineCells([cell._id])
            } else if (!this.mineCellsIds.includes(cell._id)) {
                this.addSafeCells([cell._id])
            }
        }
        return true
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
            const newProposition = new Proposition(
                `(${cell._id})`,
                adjCellsIds,
                cell.minesCount
            )
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
                    result = this.addSafeCells(satisfiedCells) || result
                } else {
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

        if (newProposition.isSatisfied()) {
            if (newProposition.hasNoMine()) {
                return this.addSafeCells(newProposition.getCells())
            } else {
                return this.addMineCells(newProposition.getCells())
            }
        }

        // console.log(newProposition.toString())
        // console.log('created proposition: ' + newProposition.toString())
        this.propositions.push(newProposition)
        return true
    }

    private addSafeCells(cellIndexes: i32[]): boolean {
        let changed = false;
        for (let a = 0; a < this.propositions.length; ++a) {
            changed = this.propositions[a].removeSafeCells(cellIndexes) || changed
        }

        const newCells: Array<i32> = [];
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
        let changed = false;
        for (let a = 0; a < this.propositions.length; ++a) {
            changed = this.propositions[a].removeMineCells(cellIndexes) || changed
        }

        const newCells: Array<i32> = [];
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
                if (this.propositions[a].getCells().length <= 0 || this.propositions[b].getCells().length <= 0) {
                    continue
                }
                const differenceProposition = this.propositions[a].subtract(this.propositions[b])
                if (this.propositions[b].isSubSetOf(this.propositions[a])) {
                    newPropositions.push(differenceProposition)
                }
                if (differenceProposition.getMines() > 0 && differenceProposition.getMines() === differenceProposition.getCells().length) {
                    newPropositions.push(differenceProposition)
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
