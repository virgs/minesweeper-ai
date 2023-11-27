export type BoardProperties = {
    width: number
    height: number
    mines: number
}

export enum Cell {
    MINE = -2,
    UNREVEILED = -1,
    ZERO = 0,
    ONE,
    TWO,
    THREE,
    FOUR,
    FIVE,
    SIX,
    SEVEN,
    EIGHT,
}

export class Board {
    readonly properties: BoardProperties
    private readonly cells: Cell[]
    private mines?: number[]

    public constructor(properties: BoardProperties) {
        this.properties = properties
        const totalCells = this.properties.height * this.properties.width

        this.cells = Array
            .from(Array(totalCells).keys())
            .fill(Cell.UNREVEILED)
    }

    public initialize(emptyCell: number) {
        this.mines = this.initializeMines(emptyCell)
        console.log('mines', this.mines.sort((a, b) => a - b))
        return this.openCell(emptyCell)
    }

    public getCells(): Cell[] {
        return this.cells
    }

    public isGameLost(): boolean {
        return this.cells
            .some((cell, index) => {
                if (cell === Cell.MINE) {
                    console.log('lost because of ' + index)
                    return true
                }
                return false
            })
    }

    public isGameWon(): boolean {
        return this.cells
            .filter(cell => cell === Cell.UNREVEILED)
            .length === this.properties.mines
    }

    public openCell(cellIndex: number): number[] {
        if (this.cells[cellIndex] === Cell.UNREVEILED) {
            // console.log('openning cell ' + cellIndex)
            const reveiledCells = [cellIndex]
            if (this.mines.includes(cellIndex)) {
                this.cells[cellIndex] = Cell.MINE

                this.mines
                    .forEach(cell => this.cells[cell] - Cell.MINE)
                return reveiledCells;
            }
            const adjacentCells = this.getAdjacentCells(cellIndex)
            const minesSurrounding = adjacentCells
                .filter(cell => this.mines.includes(cell))
                .length
            this.cells[cellIndex] = minesSurrounding
            if (minesSurrounding === 0) {
                const moreReveiledCells = adjacentCells
                    .map(cell => this.openCell(cell))
                    .flat()
                reveiledCells.push(...moreReveiledCells);
            }
            return reveiledCells
        }
        return []
    }

    public print(showIndex: boolean = false) {
        const text = this.cells
            .reduce((acc, cell, index) => {
                acc += `${cell.toString().padStart(3)}`
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
        const text = this.cells.reduce((acc, cell, index) => {
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

    public getCell(index: number): Cell {
        return this.cells[index]
    }

    public getAdjacentCells(index: number): number[] {
        const cellPosition = this.getCellPosition(index)
        const adjacentCells = []
        for (let x of [-1, 0, 1]) {
            for (let y of [-1, 0, 1]) {
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
        const clearArea = this.getAdjacentCells(emptyCell).concat(emptyCell);
        const totalCells = this.properties.height * this.properties.width
        return Array
            .from(Array(totalCells).keys())
            .filter(cell => !clearArea.includes(cell))
            .sort(() => Math.random() - 0.5)
            .filter((_, index) => index < this.properties.mines)
    }

    private getCellIndex(x: number, y: number): number {
        return this.properties.width * y + x;
    }

    private getCellPosition(index: number): { x: number, y: number } {
        return {
            x: index % this.properties.width,
            y: Math.floor(index / this.properties.width)
        }
    }

}
