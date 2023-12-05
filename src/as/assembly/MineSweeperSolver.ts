import { Board } from './Board'
import type { Cell } from './Cell'
import { Proposition } from './Proposition'

const mainPropositionThreshold = 0.2

export class MineSweeperSolver {
    private readonly board: Board
    private readonly totalCells: number
    private mineCellsIds: number[]
    private safeCellsIds: number[]
    private propositions: Proposition[]
    private addedMainProposition: boolean

    public constructor(board: Board) {
        this.board = board
        this.safeCellsIds = []
        this.mineCellsIds = []
        this.addedMainProposition = false
        this.totalCells = this.board.properties.height * this.board.properties.width

        this.propositions = []
    }

    public getKnownMineCellsIds(): number[] {
        return this.mineCellsIds;
    }

    public selectUnrevealedSafeCell(): Cell[] {
        return this.board.getNotRevealedCells().filter((cell) => this.safeCellsIds.includes(cell.id))
    }

    public selectLowestChanceCell(): number {
        let lowetRationPropositionIndex = -1
        this.propositions.reduce((lowestMineRatio, proposition, index) => {
            const mineRation = proposition.getMineRatio()
            if (mineRation < lowestMineRatio) {
                lowetRationPropositionIndex = index
                lowestMineRatio = mineRation
            }
            return lowestMineRatio
        }, Infinity)
        if (lowetRationPropositionIndex >= 0) {
            const selectedProposition = this.propositions[lowetRationPropositionIndex]
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
        const unsafeCells: number[] = Array.from(Array(this.totalCells).keys())
            .filter((index) => !this.safeCellsIds.includes(index))
            .filter((index) => !this.mineCellsIds.includes(index))
        return unsafeCells[Math.floor(Math.random() * unsafeCells.length)]
    }

    public updatePropositions(openCells: Cell[]) {
        this.createNewPropositions(openCells)

        let changed = false;
        while (!this.isBoardSolved()) {
            changed = false

            changed = this.removedKnownCellsFromPropositions() || changed
            changed = this.propositionsCompared() || changed
            changed = this.satisfiedPropositionsRemoved() || changed
            changed = this.checkMainPropositionAddition() || changed
            if (!changed) {
                break
            }

        }
        // console.log('updating is over', this.board.getNotRevealedCells().length / this.totalCells)

        // this.reducePropositions()
        // console.log(this.propositions.map((p) => p.toString()))
        // console.log('ai mines', this.mineCellsIds)
        // console.log('ai safes', this.safeCellsIds)
        // console.log(
        //     'ai unreveilled',
        //     Array.from(Array(this.totalCells).keys())
        //         .filter((cellIndex) => !this.safeCellsIds.includes(cellIndex))
        //         .filter((cellIndex) => !this.mineCellsIds.includes(cellIndex))
        // )
    }

    private checkMainPropositionAddition(): boolean {
        if (!this.addedMainProposition && this.board.getNotRevealedCells().length / this.totalCells < mainPropositionThreshold) {
            const initialPropositionCells = Array.from(Array(this.totalCells).keys())
            this.addedMainProposition = true
            console.log('adding initial proposition')
            this.addProposition(new Proposition('(initial)', initialPropositionCells, this.board.properties.mines))
            this.propositionsCompared()
            return true
        }
        return false
    }

    private satisfiedPropositionsRemoved() {
        const previousLength = this.propositions.length
        this.removedKnownCellsFromPropositions()
        this.propositions = this.propositions
            .filter(proposition => {
                if (!proposition.isSatisfied() && proposition.getCells().length >= 0) {
                    return true
                }
                // console.log('remove satisfied proposition', proposition.toString())
                const cells = proposition.getCells()
                if (proposition.hasNoMine()) {
                    this.addSafeCells(...proposition.getCells())
                } else {
                    this.addMineCells(...proposition.getCells())
                }
                return false
            })
        let propositionMap: { [propname: string]: Proposition } = {}
        this.propositions.forEach((proposition) => {
            propositionMap[proposition.hash()] = proposition
        })

        this.propositions = Object.values(propositionMap)
        const result = this.propositions.length !== previousLength
        if (result) {
            console.log('satisfiedPropositionsRemoved')
        }
        return result
    }

    public isBoardSolved() {
        if (this.safeCellsIds.length >= this.totalCells - this.board.properties.mines) {
            console.log('done by safe cells', this.safeCellsIds.length, this.totalCells - this.board.properties.mines)
            Array.from(Array(this.totalCells).keys())
                .filter((cellIndex) => !this.safeCellsIds.includes(cellIndex))
                .forEach((cellIndex) => this.addMineCells(cellIndex))
            return true
        }
        if (this.mineCellsIds.length >= this.board.properties.mines) {
            console.log('done by mines', this.mineCellsIds.length, this.board.properties.mines)
            Array.from(Array(this.totalCells).keys())
                .filter((cellIndex) => !this.mineCellsIds.includes(cellIndex))
                .forEach((cellIndex) => this.addSafeCells(cellIndex))
            return true
        }
        return false
    }

    private createNewPropositions(openCells: Cell[]) {
        openCells.forEach((cell) => {
            this.addSafeCells(cell.id)
            const adjCells = this.board.getAdjacentCells(cell)
            const newProposition = new Proposition(
                `(${cell.id})`,
                adjCells.map((adjCell) => adjCell.id),
                cell.minesAround
            )
            this.addProposition(newProposition)
        })
    }

    private removedKnownCellsFromPropositions(): boolean {
        let result = false
        this.propositions
            .filter((proposition) => proposition.isSatisfied())
            .forEach((satisfied) => {
                result = true
                const satisfiedCells = satisfied.getCells()
                if (satisfied.hasNoMine()) {
                    this.addSafeCells(...satisfiedCells)
                } else {
                    this.addMineCells(...satisfiedCells)
                }
            })
        if (result) {
            console.log('removedKnownCellsFromPropositions')
        }
        return result
    }

    private addProposition(newProposition: Proposition): boolean {
        newProposition.removeMineCells(this.mineCellsIds)
        newProposition.removeSafeCells(this.safeCellsIds)
        if (this.propositions.some((proposition) => proposition.isEqual(newProposition))) {
            return false
        }
        if (newProposition.isSatisfied()) {
            if (newProposition.hasNoMine()) {
                return this.addSafeCells(...newProposition.getCells())
            } else {
                return this.addMineCells(...newProposition.getCells())
            }
        }

        console.log('create proposition', newProposition.toString())
        this.propositions.push(newProposition)
        return true
    }

    private addSafeCells(...cellIndexes: number[]): boolean {
        const changed = this.propositions.filter((proposition) => proposition.removeSafeCells(cellIndexes)).length > 0

        let previousLength = this.safeCellsIds.length
        this.safeCellsIds.push(
            ...cellIndexes
                .filter((index) => !this.safeCellsIds.includes(index))
                .map((index) => {
                    // console.log('new safe cell discovered: ' + index)
                    return index
                })
        )

        this.safeCellsIds.sort((a, b) => a - b)
        return changed || previousLength !== this.safeCellsIds.length
    }

    private addMineCells(...cellIndexes: number[]): boolean {
        const changed = this.propositions.filter((proposition) => proposition.removeMineCells(cellIndexes)).length > 0

        let previousLength = this.mineCellsIds.length
        this.mineCellsIds.push(
            ...cellIndexes
                .filter((index) => !this.mineCellsIds.includes(index))
                .map((index) => {
                    console.log('new mine discovered: ' + index)
                    return index
                })
        )
        this.mineCellsIds.sort((a, b) => a - b)
        return changed || previousLength !== this.mineCellsIds.length
    }

    private propositionsCompared(): boolean {
        let newPropositions: Proposition[] = []
        for (let a of this.propositions) {
            for (let b of this.propositions) {
                if (b.isSubSetOf(a)) {
                    const differenceProposition = a.subtract(b)
                    // console.log(b.toString(), 'is subset of', a.toString(), 'diff', differenceProposition.toString())
                    newPropositions.push(differenceProposition)
                }
            }
        }

        const result = newPropositions.filter((newProposition) => this.addProposition(newProposition)).length > 0
        if (result) {
            console.log('propositionsCompared')
        }

        return result
    }
}
