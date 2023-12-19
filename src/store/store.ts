import { AiAction } from '@/constants/AiAction'
import type { BoardProperties } from '@/constants/BoardProperties'
import { GameConfigurations } from '@/constants/GameConfiguration'
import { MouseButtons } from '@/constants/MouseButtons'
import { Board } from '@/engine/Board'
import type { Cell } from '@/engine/Cell'
import { Solver } from '@/solver/Solver'
import { defineStore } from 'pinia'

let solver: Solver | undefined
export const mineSweeperStoreId = 'mineSweeper'
export const useMinesweeperStore = defineStore(mineSweeperStoreId, {
    state: () => {
        const boarProperties = GameConfigurations.Expert
        const board = new Board(boarProperties)
        return {
            timer: 0,
            timerInterval: undefined as number | undefined,
            boardProperties: boarProperties,
            board: board,
            aiIsThinking: false,
            // solver: new Solver(board),
            explodedBombId: undefined as number | undefined,
            gameOver: false,
            victory: undefined as boolean | undefined,
            gameIsRunning: false,
        }
    },
    actions: {
        async createNewBoard(properties: BoardProperties) {
            this.boardProperties = properties
            const board = new Board(properties)
            this.board = board
            solver?.terminate()
            solver = new Solver(board)
            this.gameIsRunning = false
            this.gameOver = false
            this.explodedBombId = undefined
            this.victory = undefined
            this.timer = 0
            clearInterval(this.timerInterval)
            await solver.waitUntilItsReady()
        },
        unflagCell(id: number) {
            const cell = this.board.getCellById(id)!
            if (!cell.aiMarkedMine) {
                cell.aiMarkedMine = false
                cell.flagged = false
            }
        },
        flagCell(id: number) {
            const cell = this.board.getCellById(id)!
            cell.flagged = true
        },
        checkGameOver() {
            return this.board.isGameLost() || this.board.isGameWon()
        },
        pressedMouseEnterEvent(cell: Cell, mouseButtonDown: MouseButtons) {
            if (mouseButtonDown === MouseButtons.NONE || cell.flagged || this.gameOver) {
                return
            }
            const beingPressedArea = [cell]
            if (mouseButtonDown === MouseButtons.BOTH || cell.isRevealed()) {
                beingPressedArea.push(...this.board.getAdjacentCells(cell).concat(cell))
            }
            this.board.cells
                .filter((cell) => cell.isNotRevealed() && !cell.flagged)
                .forEach((cell) => {
                    if (beingPressedArea.find((clear) => clear.id === cell.id) && cell.isNotRevealed()) {
                        cell.beingPressed = true
                    } else {
                        cell.beingPressed = false
                    }
                })
        },
        pressedMouseLeaveEvent(cell: Cell, mouseButtonDown: MouseButtons) {
            this.board.cells.forEach((cell) => (cell.beingPressed = false))
        },
        cellClick(cell: Cell) {
            if (!this.gameIsRunning) {
                clearInterval(this.timerInterval)
                this.timerInterval = setInterval(() => {
                    if (!this.gameOver) {
                        this.timer += 1
                    }
                }, 100)
            }
            this.gameIsRunning = true
            if (this.board.isInitialized()) {
                this.board.revealCell(cell)
            } else {
                this.board.initializeMinesAroundCell(cell)
            }

            if (this.checkGameOver()) {
                if (this.board.isGameLost()) {
                    this.explodedBombId = cell.id
                }
                this.finishGame()
            }
        },
        cellChorded(cell: Cell) {
            const adjacentCells = this.board.getAdjacentCells(cell)
            const flagsAround = adjacentCells.filter((cell) => cell.flagged).length
            if (flagsAround === cell.minesAround) {
                adjacentCells
                    .filter((cell) => cell.isNotRevealed() && !cell.flagged)
                    .forEach((cell) => this.cellClick(cell))
            }
        },
        finishGame() {
            solver?.terminate()
            this.gameIsRunning = false
            this.gameOver = true
            this.victory = this.board.isGameWon()
            clearInterval(this.timerInterval)
            console.log('game finished. ' + (this.victory ? 'You won!' : 'You lost!'))
        },
        async aiAction(aiAction: AiAction): Promise<void> {
            switch (aiAction) {
                case AiAction.HINT:
                    await solver?.process()
                    await this.putAiStamp()
                    break
                case AiAction.FORWARD_STEP:
                    await this.aiPlayOneStep()
                    break
                case AiAction.PLAY:
                    await this.aiPlay()
                    break
                case AiAction.GUESS:
                    if (!this.gameIsRunning) {
                        await this.createNewBoard(this.boardProperties)
                    }
                    const guess = await solver?.makeGuess()!
                    const cell = this.board.getCellById(guess.id)!
                    console.log('marking as ai guess: ' + guess.id)
                    cell!.aiGuessed = true
                    this.cellClick(cell)
                    break
            }
        },
        async aiPlay() {
            console.log('thinking')
            this.aiIsThinking = true
            do {
                await solver?.process()
            } while (await this.updateCellStates())

            this.aiIsThinking = false
            console.log('done thinking')
            if (this.checkGameOver()) {
                this.finishGame()
            }
        },
        async aiPlayOneStep() {
            console.log('thinking')
            this.aiIsThinking = true

            await solver?.process()
            await this.updateCellStates()

            this.aiIsThinking = false
            console.log('done thinking')
            if (this.checkGameOver()) {
                this.finishGame()
            }
        },
        async updateCellStates(): Promise<boolean> {
            this.putAiStamp()
            const revealedAnyCell =
                solver!.knownSafeCellsIds
                    .filter((cell) => this.board.cells[cell].isNotRevealed())
                    .map((cell) => this.board.getCellById(cell)!)
                    .filter((cell) => !cell.flagged)
                    .map((cell) => this.board.revealCell(cell)).length > 0
            return revealedAnyCell
        },
        async putAiStamp(): Promise<void> {
            return solver!.knownMineCellsIds
                .concat(solver!.knownSafeCellsIds)
                .map((cellId) => this.board.getCellById(cellId)!)
                .filter((cell) => cell.isNotRevealed())
                .filter((cell) => !cell.flagged)
                .forEach((cell) => {
                    if (solver?.knownMineCellsIds.includes(cell?.id)) {
                        cell!.flagged = true
                        cell!.aiMarkedMine = true
                    } else {
                        cell!.aiMarkedSafe = true
                    }
                })
        },
    },
})
