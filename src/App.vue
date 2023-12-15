<template>
    <main @mousedown="mouseDown = true" @mouseup="mouseDown = false" @mouseleave="mouseDown = false">
        <div v-if="aiIsThinking" class="spinner-border" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
        <div class="container p-2">
            <Dashboard :board="board" :game-over="gameOver" :mouse-down="mouseDown" :victory="victory"
                :game-is-running="gameIsRunning" @new-game="newGame" @ai-action="aiAction">
            </Dashboard>
            <Grid :board="board" :game-over="gameOver" :explodedBombId="explodedBombId" @cell-click="cellClick">
            </Grid>
        </div>
    </main>
</template>

<script lang="ts">
import { Board } from '@/engine/Board'
import Dashboard from './components/Dashboard.vue'
import Grid from './components/Grid.vue'
import { AiAction } from './constants/AiAction'
import type { BoardProperties } from './constants/BoardProperties'
import type { Cell } from './engine/Cell'
import { Solver } from './solver/Solver'
import { GameConfigurations } from './constants/GameConfiguration'

export default {
    name: 'App',
    components: {
        Grid, Dashboard
    },
    data() {
        const board = new Board(GameConfigurations.Expert)
        return {
            solver: new Solver(board),
            aiIsThinking: false,
            mouseDown: false,
            board: board as Board,
            gameOver: false,
            gameIsRunning: false,
            explodedBombId: undefined as number | undefined,
            victory: undefined as boolean | undefined
        }
    },
    methods: {
        async aiAction(aiAction: AiAction): Promise<void> {
            switch (aiAction) {
                case AiAction.HINT_MINE:
                    await this.solver.process()
                    this.solver.knownMineCellsIds
                        .filter(cell => !this.board.getCellById(cell)?.flagged)
                        .forEach(cell => {
                            this.board.getCellById(cell)!.flagged = true
                            this.board.getCellById(cell)!.aiMarkedMine = true
                        })
                    break;
                case AiAction.HINT_SAFE:
                    await this.solver.process()
                    const notRevealedSafeId =
                        [...this.solver.knownSafeCellsIds]
                            .sort()
                            .find(cell => this.board.getCellById(cell)?.isNotRevealed())
                    if (notRevealedSafeId !== undefined) {
                        this.cellClick({ cell: this.board.getCellById(notRevealedSafeId)! })
                    }
                    break;
                case AiAction.PLAY:
                    this.startAi()
                    break;
                case AiAction.GUESS:
                    const guess = await this.solver.makeGuess()
                    console.log(guess)
                    this.cellClick({ cell: this.board.getCellById(guess.id)! })
                    break;
            }
        },
        async newGame(configuration: { board: BoardProperties }) {
            const board = new Board(configuration.board)
            this.solver = new Solver(board)
            this.board = board
            this.gameIsRunning = false
            this.gameOver = false
            this.explodedBombId = undefined
            this.victory = undefined
            await this.solver.waitUntilItsReady()
        },
        async startAi() {
            this.aiIsThinking = true
            console.log('thinking')
            while (true) {
                const previouslyKnownCells = this.solver.knownSafeCellsIds.length + this.solver.knownMineCellsIds.length
                await this.solver.process()
                this.updateCellStates()
                const currentlyKnownCells = this.solver.knownSafeCellsIds.length + this.solver.knownMineCellsIds.length
                if (this.isGameOver() || previouslyKnownCells === currentlyKnownCells) {
                    break
                }
            }
            this.aiIsThinking = false
            console.log('done thinking')
            if (this.isGameOver()) {
                this.finishGame()
            }
        },
        cellClick(data: { cell: Cell }) {
            this.gameIsRunning = true
            if (this.board.isInitialized()) {
                this.board.revealCell(data.cell)
            } else {
                this.board.initializeMinesAroundCell(data.cell)
            }

            if (this.isGameOver()) {
                if (this.board.isGameLost()) {
                    this.explodedBombId = data.cell.id
                }
                this.finishGame()
            }
        },
        isGameOver(): boolean {
            return this.board.isGameLost() || this.board.isGameWon()
        },
        updateCellStates(): void {
            this.solver.knownSafeCellsIds
                .forEach((cellId) => {
                    const cell = this.board.getCellById(cellId)!
                    cell.aiMarkedSafe = true
                    this.board.revealCell(cell)
                    if (this.board.isGameLost()) {
                        this.explodedBombId = cell.id
                    }
                })
            this.solver.knownMineCellsIds
                .forEach((cellId) => {
                    const cell = this.board.getCellById(cellId)!
                    if (!cell.flagged) {
                        cell.flagged = true
                        cell.aiMarkedMine = true
                    }
                })
            // console.log(solver.knownMineCellsIds)
            // console.log(solver.knownSafeCellsIds)
        },
        finishGame() {
            this.updateCellStates()
            this.gameIsRunning = false
            this.gameOver = true
            this.victory = this.board.isGameWon()
            console.log('game finished. ' + (this.victory ? 'You won!' : 'You lost!'))
        },
    },
}
</script>

<style scoped>
.container {
    margin-top: 5px;
    width: min-content;
    min-width: 300px;
    border-radius: 2px;
    padding: 5px;
    background-color: #ebebeb;
    border-width: 4px;
    border-style: solid;
    border-color: white;
}

.spinner-border {
    position: absolute;
    top: 40%;
    left: 50%;
    border-width: thick;
    width: 3rem;
    height: 3rem;
}
</style>
