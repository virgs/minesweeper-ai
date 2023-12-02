import { Board } from './Board'
import type { Cell } from './Cell'
import { Proposition } from './Proposition'

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

    public selectUnreveilledSafeCell(): Cell[] {
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
        if (!this.addedMainProposition && this.totalCells - this.mineCellsIds.length - this.safeCellsIds.length < 50) {
            const initialPropositionCells = Array.from(Array(this.totalCells).keys())
            this.addedMainProposition = true
            console.log('adding initial proposition')
            this.addProposition(new Proposition(initialPropositionCells, this.board.properties.mines))
            this.derivePropositions()
        }

        while (!this.isBoardSolved()) {
            if (this.removeKnownCellsFromPropositions()) {
                this.derivePropositions()
            } else {
                break
            }
            this.reducePropositions()
        }

        this.reducePropositions()
        console.log(this.propositions.map((p) => p.toString()))
        console.log('ai mines', this.mineCellsIds)
        console.log('ai safes', this.safeCellsIds)
        console.log(
            'ai unreveilled',
            Array.from(Array(this.totalCells).keys())
                .filter((cellIndex) => !this.safeCellsIds.includes(cellIndex))
                .filter((cellIndex) => !this.mineCellsIds.includes(cellIndex))
        )
    }

    private reducePropositions() {
        const previousLength = this.propositions.length
        this.propositions = this.propositions.filter(
            (proposition) => !proposition.isSatisfied() && proposition.getCells().length >= 0
        )
        let propositionMap: { [propname: string]: Proposition } = {}
        this.propositions.forEach((proposition) => {
            propositionMap[proposition.toString()] = proposition
        })

        this.propositions = Object.values(propositionMap)
        return this.propositions.length !== previousLength
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
                adjCells.map((adjCell) => adjCell.id),
                cell.minesAround
            )
            this.addProposition(newProposition)
        })
    }

    private removeKnownCellsFromPropositions(): boolean {
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

        // console.log('new proposition discovered' + newProposition.toString())
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

    private derivePropositions(): boolean {
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

        return newPropositions.filter((newProposition) => this.addProposition(newProposition)).length > 0
    }
}
