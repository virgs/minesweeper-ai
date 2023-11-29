export class Proposition {
    private cellsIndex: number[]
    private mines: number

    public constructor(cells: number[], mines: number) {
        const set = new Set<number>(cells);
        this.cellsIndex = Array.from(set)
        this.mines = mines
    }

    public toString(): string {
        return `({${this.cellsIndex.length}} ${this.cellsIndex.sort((a, b) => a - b)}: mines -> ${this.mines})`
    }

    public getMineRatio(): number {
        return this.mines / this.cellsIndex.length
    }

    public getCells(): number[] {
        return this.cellsIndex
    }

    public getMines(): number {
        return this.mines
    }

    public isSubSetOf(otherProposition: Proposition): boolean {
        return this.cellsIndex.length < otherProposition.cellsIndex.length &&
            this.cellsIndex
                .every(otherCell => otherProposition.cellsIndex.includes(otherCell))
    }

    public subtract(otherProposition: Proposition): Proposition {
        const minesDiff = this.mines - otherProposition.mines
        const cellsDiff = this.cellsIndex
            .filter(cell => !otherProposition.cellsIndex.includes(cell))
        return new Proposition(cellsDiff, minesDiff)
    }

    public getRandomCell(): number {
        return this.cellsIndex[Math.floor(Math.random() * this.cellsIndex.length)]
    }

    // returns true if this method changed the proposition
    public removeMineCells(mines: number[]): boolean {
        let previousCellsLength = this.cellsIndex.length;
        this.cellsIndex = this.cellsIndex
            .reduce((acc, cell) => {
                if (mines.includes(cell)) {
                    --this.mines
                } else {
                    acc.push(cell)
                }
                return acc
            }, [] as number[])
        return previousCellsLength !== this.cellsIndex.length
    }

    // returns true if this method changed the proposition
    public removeSafeCells(safes: number[]): boolean {
        let previousCellsLength = this.cellsIndex.length;
        this.cellsIndex = this.cellsIndex
            .filter(cell => !safes.includes(cell))
        return previousCellsLength !== this.cellsIndex.length
    }

    public isSatisfied(): boolean {
        return this.mines === 0 || this.mines >= this.cellsIndex.length
    }

    public hasNoMine(): boolean {
        return this.mines === 0
    }

    public isEqual(other: Proposition): boolean {
        if (this.mines != other.mines) {
            return false
        }
        if (this.cellsIndex.length != other.cellsIndex.length) {
            return false
        }
        return this.cellsIndex
            .every(cell => other.cellsIndex.includes(cell))
    }

}