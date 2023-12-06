export class Proposition {
    private cellsIndex: i32[]
    private mines: i32
    readonly origin: string

    public constructor(origin: string, cells: i32[], mines: i32) {
        this.origin = origin
        const set = new Set<i32>()
        for (let i = 0; i < cells.length; ++i) {
            set.add(cells[i])
        }

        this.cellsIndex = set.values()
        this.mines = mines
    }

    public toString(): string {
        return `/${this.origin}/: (${this.cellsIndex.length}) ${this.cellsIndex.sort((a, b) => a - b)}: mines -> {${this.mines}}`
    }

    public hash(): string {
        return `${this.cellsIndex.sort((a, b) => a - b)}:${this.mines}`
    }

    public getMineRatio(): i32 {
        return this.mines / this.cellsIndex.length
    }

    public getCells(): i32[] {
        return this.cellsIndex
    }

    public getMines(): i32 {
        return this.mines
    }

    public isSubSetOf(otherProposition: Proposition): bool {
        if (this.cellsIndex.length >= otherProposition.cellsIndex.length) {
            return false
        }

        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (!otherProposition.cellsIndex.includes(this.cellsIndex[i])) {
                return false
            }
        }
        return true
    }

    public subtract(otherProposition: Proposition): Proposition {
        const minesDiff = this.mines - otherProposition.mines
        const cellsDiff: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (!otherProposition.cellsIndex.includes(this.cellsIndex[i])) {
                cellsDiff.push(this.cellsIndex[i])
            }
        }
        return new Proposition(`${this.origin}-${otherProposition.origin}`, cellsDiff, minesDiff)
    }

    public getRandomCell(): i32 {
        return this.cellsIndex[Math.floor(Math.random() * this.cellsIndex.length)]
    }

    // returns true if this method changed the proposition
    public removeMineCells(mines: i32[]): boolean {
        let previousCellsLength = this.cellsIndex.length

        const remainingCells: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (mines.includes(this.cellsIndex[i])) {
                --this.mines
            } else {
                remainingCells.push(this.cellsIndex[i])
            }
        }

        this.cellsIndex = remainingCells
        return previousCellsLength !== this.cellsIndex.length
    }

    public removeSafeCells(safes: i32[]): boolean {
        let previousCellsLength = this.cellsIndex.length

        const remainingCells: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (!safes.includes(this.cellsIndex[i])) {
                remainingCells.push(this.cellsIndex[i])
            }
        }

        this.cellsIndex = remainingCells
        return previousCellsLength !== this.cellsIndex.length
    }

    public isContradictory(): boolean {
        return this.mines < this.cellsIndex.length
    }

    public isSatisfied(): boolean {
        return this.hasNoMine() || (this.mines >= this.cellsIndex.length && this.cellsIndex.length > 0)
    }

    public hasNoMine(): boolean {
        return this.mines === 0
    }

    public isEqual(other: Proposition): bool {
        if (this.mines != other.mines) {
            return false
        }
        if (this.cellsIndex.length != other.cellsIndex.length) {
            return false
        }

        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (!other.cellsIndex.includes(this.cellsIndex[i])) {
                return false
            }
        }
        return true
    }
}
