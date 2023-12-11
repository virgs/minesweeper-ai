import { BoardProperties } from './models/BoardProperties';
import { Cell } from './models/Cell';

class Location {
    x!: i32;
    y!: i32;
};

@serializable
export class Board {
    properties!: BoardProperties
    cells!: Array<Cell>

    public getCellById(id: i32): Cell {
        return this.cells[id]
    }

    public getCellByLocation(x: i32, y: i32): Cell {
        return this.cells[this.properties.width * y + x]
    }

    public getRevealedCells(): Cell[] {
        const revealedCells: Cell[] = []
        for (let i = 0; i < this.cells.length; ++i) {
            if (this.cells[i].revealed) {
                revealedCells.push(this.cells[i])
            }
        }
        return revealedCells;
    }

    public getNotRevealedCells(): Cell[] {
        const notRevealedCells: Cell[] = []
        for (let i = 0; i < this.cells.length; ++i) {
            if (!this.cells[i].revealed) {
                notRevealedCells.push(this.cells[i])
            }
        }
        return notRevealedCells;
    }

    public getAdjacentCells(cell: Cell): Array<Cell> {
        const cellPosition: Location = {
            x: cell._id % this.properties.width,
            y: cell._id / this.properties.width as i32,
        }
        const adjacentCells: Cell[] = []
        for (let y = -1; y < 2; ++y) {
            for (let x = -1; x < 2; ++x) {
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
                adjacentCells.push(this.getCellByLocation(newX, newY))
            }
        }

        return adjacentCells
    }

}

