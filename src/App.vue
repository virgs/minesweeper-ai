<template>
    <main>
        <Grid :board="board" :game-over="gameOver" :explodedBombId="explodedBombId" @cell-click="cellClick"
            @mousedown="mouseDown = true" @mouseup="mouseDown = false">
        </Grid>
    </main>
</template>

<script lang="ts">
import { Board } from '@/engine/Board'
import Grid from './components/Grid.vue'
import { GameConfigurations } from './constants/GameConfiguration'
import type { Cell } from './engine/Cell'
import { Solver } from './solver/Solver'

let solver: Solver
export default {
    name: 'App',
    components: {
        Grid,
    },
    setup() {
        return {
            virgs: 13,
        }
    },
    data() {
        const board = new Board(GameConfigurations.Expert)
        solver = new Solver(board)
        return {
            mouseDown: false,
            board: board,
            gameOver: false,
            explodedBombId: undefined as number | undefined,
        }
    },
    async mounted() {
        await solver.waitUntilItsReady()
        console.log('solver is ready')
        // solver = new Solver(toRaw(this.board))
        // await solver.waitUntilItsReady()
    },
    methods: {
        async startAi() {
            console.log('thinking', this.virgs)
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
            console.log('game finished. ' + (this.board.isGameWon() ? 'You won!' : 'You lost!'))
        },
    },
}
</script>

<style scoped>
main {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>
