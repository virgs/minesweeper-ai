import { Proposition } from './Proposition'

export class Guess {
    id!: i32
    mines!: i32
    cells!: i32
}

export class PropositionsSolver {
    private mineCellsIds: Array<i32>
    private safeCellsIds: Array<i32>
    private propositions: Proposition[]

    public constructor() {
        this.safeCellsIds = []
        this.mineCellsIds = []
        this.propositions = []
    }

    public hasContradictions(): boolean {
        for (let a = 0; a < this.propositions.length; ++a) {
            if (this.propositions[a].isContradictory()) {
                return true
            }
        }
        return false
    }

    public addSafeCells(cellIndexes: i32[]): boolean {
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

    public addMineCells(cellIndexes: i32[]): boolean {
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


    public getPropositions(): Proposition[] {
        return this.propositions
    }

    public getKnownMineCellsIds(): i32[] {
        return this.mineCellsIds
    }

    public getKnownSafeCellsIds(): i32[] {
        return this.safeCellsIds
    }

    public run(): void {
        let changed: bool = false
        while (true) {
            let previousKnownCells = this.safeCellsIds.length + this.mineCellsIds.length
            changed = false

            changed = this.removedKnownCellsFromPropositions() || changed
            changed = this.satisfiedPropositionsRemoved() || changed
            changed = this.propositionsCompared() || changed
            changed = this.satisfiedPropositionsRemoved() || changed
            let currentKnownCells = this.safeCellsIds.length + this.mineCellsIds.length
            if (!changed && previousKnownCells === currentKnownCells) {
                break
            }
        }
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

    public addPropositions(newPropositions: Proposition[]): boolean {
        let changed = false
        for (let i = 0; i < newPropositions.length; ++i) {
            const newProposition = newPropositions[i].clone()
            newProposition.removeMineCells(this.mineCellsIds)
            newProposition.removeSafeCells(this.safeCellsIds)

            if (this.hasProposition(newProposition)) {
                continue;
            }

            if (newProposition.isSatisfied()) {
                if (newProposition.hasNoMine()) {
                    this.addSafeCells(newProposition.getCells())
                } else {
                    this.addMineCells(newProposition.getCells())
                }
                continue
            }

            this.propositions.push(newProposition)
            changed = true
        }

        return changed
    }

    private hasProposition(proposition: Proposition): boolean {
        for (let i = 0; i < this.propositions.length; ++i) {
            if (this.propositions[i].isEqual(proposition)) {
                return true
            }
        }
        return false
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

        return this.addPropositions(newPropositions)
    }
}
