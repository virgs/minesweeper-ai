<template>
    <main @mousedown="mouseDown = true" @mouseup="mouseDown = false" @mouseleave="mouseDown = false">
        <div class="container">
            <Dashboard :board="board" :game-over="gameOver" :mouse-down="mouseDown" :victory="victory" @new-game="newGame">
            </Dashboard>
            <Grid :board="board" :game-over="gameOver" :explodedBombId="explodedBombId" @cell-click="cellClick">
            </Grid>
        </div>
    </main>
</template>

<script lang="ts">
import { Board } from '@/engine/Board'
import Grid from './components/Grid.vue'
import Dashboard from './components/Dashboard.vue'
import { GameConfigurations } from './constants/GameConfiguration'
import type { Cell } from './engine/Cell'
import { Solver } from './solver/Solver'
import type { BoardProperties } from './constants/BoardProperties'

let solver: Solver

export default {
    name: 'App',
    components: {
        Grid, Dashboard
    },
    data() {
        const board = new Board(GameConfigurations.Expert)
        solver = new Solver(board)
        return {
            mouseDown: false,
            board: board as Board,
            gameOver: false,
            explodedBombId: undefined as number | undefined,
            victory: undefined as boolean | undefined
        }
    },
    methods: {
        async newGame(configuration: { board: BoardProperties }) {
            const board = new Board(configuration.board)
            solver = new Solver(board)
            this.board = board
            this.gameOver = false
            this.explodedBombId = undefined
            this.victory = undefined
            await solver.waitUntilItsReady()
        },
        async startAi() {
            console.log('thinking')
            while (true) {
                const previouslyKnownCells = solver.knownSafeCellsIds.length + solver.knownMineCellsIds.length
                await solver.process()
                this.updateCellStates()
                const currentlyKnownCells = solver.knownSafeCellsIds.length + solver.knownMineCellsIds.length
                if (this.isGameOver() || previouslyKnownCells === currentlyKnownCells) {
                    break
                }
            }
            console.log('done thinking')
        },
        async cellClick(data: { cell: Cell }) {
            if (this.board.isInitialized()) {
                this.board.revealCell(data.cell)
            } else {
                this.board.initializeMinesAroundCell(data.cell)
            }
            if (this.board.isGameLost()) {
                this.finishGame()
                this.explodedBombId = data.cell.id
                return
            }

            await this.startAi()

            if (this.isGameOver()) {
                this.finishGame()
            }
        },
        isGameOver() {
            return this.board.isGameLost() || this.board.isGameWon()
        },
        updateCellStates() {
            solver.knownSafeCellsIds.forEach((cellId) => {
                const cell = this.board.getCellById(cellId)!
                if (cell.hasMine) {
                    console.log('AI made a mistake. Cell had mine', cell)
                }
                cell.aiMarkedSafe = true
                this.board.revealCell(cell)
                if (this.board.isGameLost()) {
                    this.explodedBombId = cell.id
                }
            })
            solver.knownMineCellsIds.forEach((cellId) => {
                const cell = this.board.getCellById(cellId)!
                if (!cell.hasMine) {
                    console.log('AI made a mistake. Cell had no mine', cell, solver.knownMineCellsIds)
                }
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

            console.log(solver.knownMineCellsIds)
            console.log(solver.knownSafeCellsIds)
            this.gameOver = true
            this.victory = this.board.isGameWon()
            console.log('game finished. ' + (this.victory ? 'You won!' : 'You lost!'))
        },
    },
}
</script>

<style scoped>
main {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -75%);
    min-width: 400px;
    border-radius: 2px;
    padding: 5px;
    background-color: #ebebeb;
    border-width: 4px;
    border-style: solid;
    border-color: white;
}
</style>
