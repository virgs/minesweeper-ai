import { Proposition } from './Proposition'
import { PropositionsSolver } from './PropositionsSolver'

export class HypothesisRunner {
    private readonly originalPropositions: Proposition[]
    private readonly cells: i32[]
    private readonly knownMines: i32[]
    private readonly knownSafes: i32[]

    public constructor(propositions: Proposition[]) {
        this.originalPropositions = []
        this.knownMines = []
        this.knownSafes = []
        this.cells = []
        const uniqueCells = new Set<i32>()
        for (let i = 0; i < propositions.length; ++i) {
            const proposition = propositions[i].clone()
            this.originalPropositions.push(proposition)
            const propositionCells = proposition.getCells()
            for (let j = 0; j < propositionCells.length; ++j) {
                uniqueCells.add(propositionCells[j])
            }
        }
        this.cells = uniqueCells.values().sort((a, b) => a - b)
    }

    public findContradictions(): boolean {
        //mine hypothesis
        for (let i = 0; i < this.cells.length; ++i) {
            const currentCell = this.cells[i]
            const ps = new PropositionsSolver()
            ps.addPropositions(this.originalPropositions)
            ps.addMineCells([currentCell])
            ps.run()
            if (ps.hasContradictions()) {
                this.knownSafes.push(currentCell)
            }
        }
        //safe hypothesis
        for (let i = 0; i < this.cells.length; ++i) {
            const currentCell = this.cells[i]
            const ps = new PropositionsSolver()
            ps.addPropositions(this.originalPropositions)
            ps.addSafeCells([currentCell])
            ps.run()
            if (ps.hasContradictions()) {
                this.knownMines.push(currentCell)
            }

        }
        return this.knownMines.length + this.knownSafes.length > 0
    }

    public getKnownSafeCellsIds(): i32[] {
        return this.knownSafes
    }
    public getKnownMineCellsIds(): i32[] {
        return this.knownMines
    }

}