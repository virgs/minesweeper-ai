export class Proposition {
    private cellsIndex: i32[]
    private numberOfMines: i32
    readonly origin: string

    public constructor(origin: string, cells: i32[], mines: i32) {
        this.origin = origin
        const set = new Set<i32>()
        for (let i = 0; i < cells.length; ++i) {
            set.add(cells[i])
        }

        this.cellsIndex = set.values()
        this.numberOfMines = mines
    }

    public clone(): Proposition {
        return new Proposition(this.origin, this.cellsIndex, this.numberOfMines)
    }

    public toString(): string {
        return `|${this.origin}| {${this.cellsIndex.sort((a, b) => a - b)}} = -> ${this.numberOfMines}`
    }

    public hash(): string {
        return `${this.cellsIndex.sort((a, b) => a - b)}:${this.numberOfMines}`
    }

    public getMineRatio(): f32 {
        return f32(this.numberOfMines) / f32(this.cellsIndex.length)
    }

    public getCells(): i32[] {
        return this.cellsIndex
    }

    public getMines(): i32 {
        return this.numberOfMines
    }

    public isSubSetOf(otherProposition: Proposition): bool {
        return (
            otherProposition.cellsIndex.length > this.cellsIndex.length &&
            this.getOverlappingCells(otherProposition).length === this.cellsIndex.length
        )
    }

    public getOverlappingCells(otherProposition: Proposition): i32[] {
        const overlappingCells: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (otherProposition.cellsIndex.includes(this.cellsIndex[i])) {
                overlappingCells.push(this.cellsIndex[i])
            }
        }
        return overlappingCells
    }

    public getCellsExcluding(cells: i32[]): i32[] {
        const result: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (!cells.includes(this.cellsIndex[i])) {
                result.push(this.cellsIndex[i])
            }
        }
        return result
    }

    public subtractSubset(otherProposition: Proposition): Proposition {
        const minesDiff = this.numberOfMines - otherProposition.numberOfMines
        if (minesDiff < 0) {
            console.log(`minsDiff is negative. Is ${otherProposition} really subset of ${this}?`)
        }
        const cellsDiff: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (!otherProposition.cellsIndex.includes(this.cellsIndex[i])) {
                cellsDiff.push(this.cellsIndex[i])
            }
        }
        return new Proposition(`(${this.origin} - ${otherProposition.origin})`, cellsDiff, minesDiff)
    }

    public getRandomCell(): i32 {
        return this.cellsIndex[Math.floor(Math.random() * this.cellsIndex.length)]
    }

    // returns true if this method changed the proposition
    public removeMineCells(mineCells: i32[]): boolean {
        let previousCellsLength = this.cellsIndex.length

        const remainingCells: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (mineCells.includes(this.cellsIndex[i])) {
                --this.numberOfMines
            } else {
                remainingCells.push(this.cellsIndex[i])
            }
        }

        this.cellsIndex = remainingCells
        return (previousCellsLength !== this.cellsIndex.length)
    }

    public removeSafeCells(safeCells: i32[]): boolean {
        let previousCellsLength = this.cellsIndex.length

        const remainingCells: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (!safeCells.includes(this.cellsIndex[i])) {
                remainingCells.push(this.cellsIndex[i])
            }
        }

        this.cellsIndex = remainingCells
        return previousCellsLength !== this.cellsIndex.length
    }

    public isContradictory(): boolean {
        if (this.numberOfMines > this.cellsIndex.length || this.numberOfMines < 0) {
            return true
        }
        return false
    }

    public isSatisfied(): boolean {
        return this.hasNoMine() || (this.numberOfMines >= this.cellsIndex.length && this.cellsIndex.length > 0)
    }

    public hasNoMine(): boolean {
        return this.numberOfMines === 0
    }

    public isEqual(other: Proposition): bool {
        if (this.numberOfMines != other.numberOfMines) {
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
