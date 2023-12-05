import { BoardProperties } from './BoardProperties';
import { Cell } from './Cell';

@serilizable
export class Board {
    properties!: BoardProperties
    cells!: Array<Cell>

    public getCellById(id: i32): Cell {
        for (let i = 0; i < this.cells.length; ++i) {
            if (this.cells[i]._id === id) {
                return this.cells[i]
            }
        }
        return null!
    }

    public getCellByLocation(x: i32, y: i32): Cell {
        return this.cells[this.properties.width * y + x]
    }

    public getNotRevealedCells(): Cell[] {
        return this.cells.filter((cell) => !cell.revealed)
    }

    public getRevealedCells(): Cell[] {
        return this.cells.filter((cell) => cell.revealed)
    }

    public isGameLost(): bool {
        return this.cells.some((cell) => cell.mine && cell.revealed)
    }

    public isGameWon(): boolean {
        return this.cells
            .filter((cell) => cell.revealed).length === (this.properties.height * this.properties.width) - this.properties.mines
    }

    public getAdjacentCells(cell: Cell): Cell[] {
        const cellPosition = {
            x: cell._id % this.properties.width,
            y: Math.floor(cell._id / this.properties.width),
        }
        const adjIndex = [-1, 0, 1]
        const adjacentCells = []
        for (let y = 0; y < adjIndex.length; ++y) {
            for (let x = 0; x < adjIndex.length; ++x) {
                const newX = cellPosition.x + x
                const newY = cellPosition.y + y
                if (newX < 0 || newX > this.properties.width - 1) {
                    continue
                }
                if (newY < 0 || newY > this.properties.height - 1) {
                    continue
                }
                if (x === 0 && y === 0) {
                    continue
                }
                adjacentCells.push(this.getCellByLocation(newX, newY)!)
            }
        }
        return adjacentCells
    }

}

