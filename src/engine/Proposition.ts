export class Proposition {
    private cells: number[]
    private mines: number

    public constructor(cells: number[], mines: number) {
        const set = new Set<number>(cells);
        this.cells = Array.from(set)
        this.mines = mines
        // console.log('new proposition ' + this.toString())
    }

    public toString(): string {
        return `{${this.cells.length}} ${this.cells}: mines -> ${this.mines}`
    }

    public getCellChance(): number {
        return this.mines / this.cells.length
    }

    public getCells(): any {
        return this.cells
    }

    public isSubSetOf(otherProposition: Proposition): boolean {
        return this.cells.length < otherProposition.cells.length &&
            this.cells
                .every(otherCell => otherProposition.cells.includes(otherCell))
    }

    public subtract(otherProposition: Proposition): Proposition {
        const minesDiff = this.mines - otherProposition.mines
        const cellsDiff = this.cells
            .filter(cell => !otherProposition.cells.includes(cell))
        return new Proposition(cellsDiff, minesDiff)
    }

    public getRandomCell(): number {
        return this.cells[Math.floor(Math.random() * this.cells.length)]
    }

    // returns true if this method changed the proposition
    public removeMineCells(mines: number[]): boolean {
        let previousCellsLength = this.cells.length;
        this.cells = this.cells
            .reduce((acc, cell) => {
                if (mines.includes(cell)) {
                    --this.mines
                } else {
                    acc.push(cell)
                }
                return acc
            }, [])
        return previousCellsLength !== this.cells.length
    }

    // returns true if this method changed the proposition
    public removeSafeCells(safes: number[]): boolean {
        let previousCellsLength = this.cells.length;
        this.cells = this.cells
            .filter(cell => !safes.includes(cell))
        return previousCellsLength !== this.cells.length
    }

    public isSatisfied(): boolean {
        return this.mines === 0 || this.mines === this.cells.length
    }

    public hasNoMine(): boolean {
        return this.mines === 0
    }

    public isEqual(other: Proposition): boolean {
        if (this.mines != other.mines) {
            return false
        }
        if (this.cells.length != other.cells.length) {
            return false
        }
        return this.cells
            .every(cell => other.cells.includes(cell))
    }

}