import { Cell } from "./Cell";

export type BoardProperties = {
    width: number
    height: number
    mines: number
}

export class Board {
    readonly properties: BoardProperties
    private readonly cells: Cell[]
    private readonly mines: number[]
    private readonly totalCells: number;

    public constructor(properties: BoardProperties) {
        this.properties = properties
        this.totalCells = this.properties.height * this.properties.width
        this.cells = []
        this.mines = []
    }

    public initialize(emptyCell: number) {
        this.mines.push(...this.initializeMines(emptyCell))

        this.cells.push(...Array
            .from(Array(this.totalCells))
            .map((_, index) => new Cell(this.getMinesSurrounding(index))))

        console.log('mines position', this.mines)

        return this.reveillCell(emptyCell)
    }

    public getCells(): Cell[] {
        return this.cells
    }

    public isGameLost(): boolean {
        return this.mines
            .some(mineIndex => this.cells[mineIndex].isReveilled())
    }

    public isGameWon(): boolean {
        return this.cells
            .filter(cell => cell.isReveilled())
            .length === (this.totalCells - this.properties.mines)
    }

    public reveillCell(cellIndex: number): number[] {
        if (this.cells[cellIndex].isUnreveilled()) {
            const result = [cellIndex]
            this.cells[cellIndex].reveil()
            if (this.mines.includes(cellIndex)) {
                console.log('died', cellIndex, this.mines)
                this.mines
                    .forEach(cell => this.cells[cell].reveil())
                return this.mines;
            } else {
                if (this.cells[cellIndex].minesAround === 0) {
                    const moreReveiledCells = this.getAdjacentCellsIndex(cellIndex)
                        .filter(cell => this.cells[cell].isUnreveilled())
                        .map(cell => this.reveillCell(cell))
                        .flat()
                    result.push(...moreReveiledCells)
                }
                return result
            }
        }
        return []
    }

    private getMinesSurrounding(cellIndex: number): number {
        const adjacentCells = this.getAdjacentCellsIndex(cellIndex)
        return adjacentCells
            .filter(cell => this.mines.includes(cell))
            .length
    }

    public print(showIndex: boolean = false) {
        const text = this.cells
            .reduce((acc, cell, index) => {
                acc += `${cell.minesAround.toString().padStart(3)}`
                if (showIndex) {
                    acc += ` (${index.toString().padStart(3)})`;
                }
                if ((index + 1) % this.properties.width === 0) {
                    acc += '\n'
                }
                return acc;
            }, '')
        console.log(text)
    }

    public printMines(showIndex: boolean = false) {
        const text = this.cells.reduce((acc, _cell, index) => {
            acc += `${this.mines?.includes(index) ? 'X' : ' '.padStart(3)}`
            if (showIndex) {
                acc += ` (${index.toString().padStart(3)})`;
            }
            if ((index + 1) % this.properties.width === 0) {
                acc += '\n'
            }
            return acc;
        }, '')
        console.log(text)
    }

    public getAdjacentCellsIndex(index: number): number[] {
        const cellPosition = {
            x: index % this.properties.width,
            y: Math.floor(index / this.properties.width)
        }
        const adjacentCells = []
        for (let y of [-1, 0, 1]) {
            for (let x of [-1, 0, 1]) {
                const newX = cellPosition.x + x
                const newY = cellPosition.y + y
                if (newX < 0 || newX > this.properties.width - 1) {
                    continue;
                }
                if (newY < 0 || newY > this.properties.height - 1) {
                    continue;
                }
                if (x === 0 && y === 0) {
                    continue
                }
                adjacentCells.push(this.getCellIndex(newX, newY))
            }
        }
        return adjacentCells
    }

    private initializeMines(emptyCell: number): number[] {
        const clearArea = this.getAdjacentCellsIndex(emptyCell).concat(emptyCell);
        const totalCells = this.properties.height * this.properties.width
        return Array
            .from(Array(totalCells).keys())
            .filter(cell => !clearArea.includes(cell))
            .sort(() => Math.random() - 0.5)
            .filter((_, index) => index < this.properties.mines)
            .sort((a, b) => a - b)
    }

    private getCellIndex(x: number, y: number): number {
        return this.properties.width * y + x;
    }

}
