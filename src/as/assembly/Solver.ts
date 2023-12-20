import { HypothesisRunner } from './HypothesisRunner'
import { PropositionsSolver } from './PropositionsSolver'
import { Proposition } from './Proposition'
import { Board } from './Board'

export class Solver {
    private board!: Board
    private propositionsSolver: PropositionsSolver
    private addedMainProposition: boolean

    public constructor() {
        this.propositionsSolver = new PropositionsSolver()
        this.addedMainProposition = false
    }

    public setBoard(board: Board): void {
        this.board = board
    }

    public getBoard(): Board {
        return this.board
    }

    public getKnownMineCellsIds(): i32[] {
        return this.propositionsSolver.getKnownMineCellsIds()
    }

    public getKnownSafeCellsIds(): i32[] {
        return this.propositionsSolver.getKnownSafeCellsIds()
    }

    public getPropositions(): Proposition[] {
        return this.propositionsSolver.getPropositions()
    }

    public run(): void {
        this.createNewPropositions()
        this.checkMainPropositionAddition()
        this.propositionsSolver.run()
    }

    private checkMainPropositionAddition(): boolean {
        const totalCells = this.board.properties.height * this.board.properties.width
        if (
            !this.addedMainProposition &&
            totalCells -
                (this.propositionsSolver.getKnownSafeCellsIds().length +
                    this.propositionsSolver.getKnownMineCellsIds().length) <=
                10
        ) {
            const initialPropositionCells: i32[] = new Array(totalCells)
            for (let i = 0; i < this.board.cells.length; ++i) {
                initialPropositionCells.push(this.board.cells[i]._id)
            }
            this.addedMainProposition = true
            this.propositionsSolver.addPropositions([
                new Proposition('*', initialPropositionCells, this.board.properties.mines),
            ])
            return true
        }
        return false
    }

    private createNewPropositions(): void {
        const revealedCells = this.board.getRevealedCells()
        for (let i = 0; i < revealedCells.length; ++i) {
            const cell = revealedCells[i]
            this.propositionsSolver.addSafeCells([cell._id])
            const adjCells = this.board.getAdjacentCells(cell)
            const adjCellsIds: i32[] = []
            for (let i = 0; i < adjCells.length; ++i) {
                adjCellsIds.push(adjCells[i]._id)
            }
            const newProposition = new Proposition(`${cell._id}`, adjCellsIds, cell.minesCount)
            this.propositionsSolver.addPropositions([newProposition])
        }
    }
}
