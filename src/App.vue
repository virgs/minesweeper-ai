<template>
    <main>
        <Grid :board="(board as Board)" :gameOver="gameOver" :explodedBombId="explodedBombId" @cell-click="cellClick">
        </Grid>
    </main>
</template>

<script lang="ts">

import Grid from './components/Grid.vue'
import { GameConfigurations } from './constants/GameConfiguration'
import { Board } from './engine/Board'
import type { Cell } from './engine/Cell'
import { Solver } from './solver/Solver'


let solver: Solver;
export default {
    name: 'App',
    components: {
        Grid
    },
    data() {
        const board = new Board(GameConfigurations.Intermediate)
        solver = new Solver(board)
        return {
            board: board,
            gameOver: false,
            explodedBombId: undefined as number | undefined,
        }
    },
    methods: {
        async startAi() {
            console.log('thinking')
            while (true) {
                const previouslyKnownCells = solver.knownSafeCellsIds.length + solver.knownMineCellsIds.length
                await solver.update()
                this.updateCellStates()
                const currentlyKnownCells = solver.knownSafeCellsIds.length + solver.knownMineCellsIds.length
                if (this.board.isGameLost() || this.board.isGameWon()) {
                    console.log('ai lost?', this.board.isGameLost(), this.board.isGameWon())
                    this.gameIsOver()
                    break
                }
                if (previouslyKnownCells === currentlyKnownCells) {
                    break;
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
                this.gameIsOver()
                this.explodedBombId = data.cell.id
                return
            }

            this.startAi()
            console.log('ai is over')

            if (this.board.isGameLost() || this.board.isGameWon()) {
                if (this.board.isGameLost()) {
                    this.explodedBombId = data.cell.id
                }
                this.gameIsOver()
            }

        },
        updateCellStates() {
            solver.knownSafeCellsIds
                .forEach(cellId => {
                    const cell = this.board.getCellById(cellId)!
                    if (cell.aiMarkedMine || cell.flagged) {
                        console.log('something wrong', cell)
                    }
                    if (cell.hasMine) {
                        console.log('AI made a mistake. Cell has mine', cell)
                    }
                    cell.aiMarkedSafe = true
                    this.board.revealCell(cell)
                })
            solver.knownMineCellsIds
                .forEach(cellId => {
                    const cell = this.board.getCellById(cellId)!
                    if (!cell.hasMine) {
                        console.log('AI made a mistake. Cell has no mine', cell)
                    }

                    cell.flagged = true
                    cell.aiMarkedMine = true
                })
        },
        gameIsOver() {
            this.updateCellStates()
            console.log(solver.knownMineCellsIds)
            console.log(solver.knownSafeCellsIds)
            this.gameOver = true
            console.log('game finished: ' + (this.board.isGameWon() ? 'you won!' : 'you lost!'))
        },

    }
}
</script>

<style scoped>
main {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>./solver/MineSweeperSolver./constants/BoardProperties