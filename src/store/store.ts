import type { BoardProperties } from '@/constants/BoardProperties'
import { GameConfigurations } from '@/constants/GameConfiguration'
import { Board } from '@/engine/Board'
import type { Cell } from '@/engine/Cell'
import { Solver } from '@/solver/Solver'
import { defineStore } from 'pinia'

// You can name the return value of `defineStore()` anything you want,
// but it's best to use the name of the store and surround it with `use`
// and `Store` (e.g. `useUserStore`, `useCartStore`, `useProductStore`)
// the first argument is a unique id of the store across your application
export const mineSweeperStoreId = 'mineSweeper'
export const useMinesweeperStore = defineStore(mineSweeperStoreId, {
    state: () => {
        const boarProperties = GameConfigurations.Expert
        const board = new Board(boarProperties)
        return {
            boardProperties: boarProperties,
            board: board,
            solver: new Solver(board),
            explodedBombId: undefined as number | undefined,
            gameOver: false,
            victory: undefined as boolean | undefined,
            gameIsRunning: false,
        }
    },
    getters: {
        isGameOver(): boolean {
            return this.board.isGameLost() || this.board.isGameWon()
        },
        //    doubleCount: (state) => state.count * 2,
        //is is hint available?
        //is is play available?
    },
    actions: {
        getCellByLocation(x: number, y: number): Cell {
            return this.board.getCellByLocation(x, y)!
        },
        getCellById(id: number): Cell {
            return this.board.getCellById(id)!
        },
        getAdjacentCells(cell: Cell): Cell[] {
            return this.board.getAdjacentCells(cell)
        },
        async createNewBoard(properties: BoardProperties) {
            this.boardProperties = properties
            const board = new Board(properties)
            this.board = board
            this.solver = new Solver(board)
            this.gameIsRunning = false
            this.gameOver = false
            this.explodedBombId = undefined
            this.victory = undefined
            await this.solver.waitUntilItsReady()
        },
        unflagCell(id: number) {
            this.board.getCellById(id)!.aiMarkedMine = false
            this.board.getCellById(id)!.flagged = false
        },
        flagCell(id: number) {
            this.board.getCellById(id)!.flagged = true
        },
        cellClick(cell: Cell) {
            this.gameIsRunning = true
            if (this.board.isInitialized()) {
                this.board.revealCell(cell)
            } else {
                this.board.initializeMinesAroundCell(cell)
            }

            if (this.isGameOver) {
                if (this.board.isGameLost()) {
                    console.log(cell.id)
                    this.explodedBombId = cell.id
                    console.log(this.explodedBombId)
                }
                this.finishGame()
            }
        },
        cellChorded(cell: Cell) {
            const adjacentCells = this.getAdjacentCells(cell)
            const flagsAround = adjacentCells
                .filter((cell) => cell.flagged).length
            if (flagsAround === cell.minesAround) {
                adjacentCells
                    .filter((cell) => cell.isNotRevealed() && !cell.flagged)
                    .forEach((cell) => this.cellClick(cell))
            }
        },
        finishGame() {
            this.gameIsRunning = false
            this.gameOver = true
            this.victory = this.board.isGameWon()
            console.log('game finished. ' + (this.victory ? 'You won!' : 'You lost!'))
        }
    }
})