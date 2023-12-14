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

    public clone(): Proposition {
        return new Proposition(this.origin, this.cellsIndex, this.mines)
    }

    public toString(): string {
        return `|${this.origin}| {${this.cellsIndex.sort((a, b) => a - b)}} = -> ${this.mines}`
    }

    public hash(): string {
        return `${this.cellsIndex.sort((a, b) => a - b)}:${this.mines}`
    }

    public getMineRatio(): f32 {
        return f32(this.mines) / f32(this.cellsIndex.length)
    }

    public getCells(): i32[] {
        return this.cellsIndex
    }

    public getMines(): i32 {
        return this.mines
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
        const minesDiff = this.mines - otherProposition.mines
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
    public removeMineCells(mines: i32[]): boolean {
        let previousCellsLength = this.cellsIndex.length

        const remainingCells: i32[] = []
        for (let i = 0; i < this.cellsIndex.length; ++i) {
            if (mines.includes(this.cellsIndex[i])) {
                --this.mines
                // if (this.mines < 0) {
                //     console.log(`minsDiff is negative. Mines (${mines}). This ${this}. Cell ${this.cellsIndex[i]}?`)
                // }
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
        return this.mines > this.cellsIndex.length || this.mines < 0
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
