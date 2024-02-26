import { shuffle } from '@/constants/Shuffle'
import type { BoardProperties } from '../constants/BoardProperties'
import { Cell } from './Cell'

export class Board {
    readonly properties: BoardProperties
    readonly cells: Cell[]
    private readonly totalCells: number
    private initialized: boolean

    public constructor(properties: BoardProperties) {
        this.initialized = false
        this.properties = properties
        this.totalCells = this.properties.height * this.properties.width
        this.cells = Array.from(Array(this.totalCells)).map((_, index) => new Cell(index))
    }

    public isInitialized(): boolean {
        return this.initialized
    }

    public getCellById(id: number): Cell | undefined {
        return this.cells.find((cell) => cell.id === id)
    }

    public getCellByLocation(x: number, y: number): Cell | undefined {
        return this.cells[this.properties.width * y + x]
    }

    public initializeMinesAroundCell(emptyCell: Cell) {
        const clearArea = this.getAdjacentCells(emptyCell).concat(emptyCell)
        const totalCells = this.properties.height * this.properties.width
        const cellsThatMayContainMines = Array.from(Array(totalCells).keys()).filter(
            (cell) => !clearArea.find((clear) => clear.id === cell)
        )
        const cellsWithMines: Cell[] = shuffle(cellsThatMayContainMines)
            .filter((_, index) => index < this.properties.mines)
            .sort((a, b) => a - b)
            .map((index) => this.cells[index])
        cellsWithMines.forEach((cell, _index) => (cell.hasMine = true))

        this.cells.forEach((cell) => (cell.minesAround = this.getMinesSurrounding(cell)))
        this.initialized = true

        return this.revealCell(emptyCell)
    }

    public getNotRevealedCells(): Cell[] {
        return this.cells.filter((cell) => cell.isNotRevealed())
    }

    public getRevealedCells(): Cell[] {
        return this.cells.filter((cell) => cell.isRevealed())
    }

    public isGameLost(): boolean {
        return this.cells.some((cell) => cell.hasMine && cell.isRevealed())
    }

    public isGameWon(): boolean {
        const notRevealedCells = this.cells.filter((cell) => cell.isNotRevealed())
        return notRevealedCells.every((cell) => cell.hasMine) && notRevealedCells.length === this.properties.mines
    }

    public isGameFinished(): boolean {
        return this.isGameLost() || this.isGameWon()
    }

    public revealCell(clickedCell: Cell): Cell[] {
        if (clickedCell.isNotRevealed()) {
            const result = [clickedCell]
            clickedCell.reveal()
            if (clickedCell.hasMine) {
                const mines = this.cells.filter((cell) => cell.hasMine)
                mines.filter((cel) => !cel.flagged).forEach((cell) => cell.reveal())
                return mines
            } else {
                if (clickedCell.minesAround === 0) {
                    const moreReveiledCells = this.getAdjacentCells(clickedCell)
                        .filter((cell) => cell.isNotRevealed() && !cell.flagged)
                        .map((cell) => this.revealCell(cell))
                        .flat()
                    result.push(...moreReveiledCells)
                }
                return result
            }
        }
        return []
    }

    public getAdjacentCells(cell: Cell): Cell[] {
        const cellPosition = {
            x: cell.id % this.properties.width,
            y: Math.floor(cell.id / this.properties.width),
        }
        const adjacentCells = []
        for (let y of [-1, 0, 1]) {
            for (let x of [-1, 0, 1]) {
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

    private getMinesSurrounding(cell: Cell): number {
        const adjacentCells = this.getAdjacentCells(cell)
        return adjacentCells.filter((cell) => cell.hasMine).length
    }
}
