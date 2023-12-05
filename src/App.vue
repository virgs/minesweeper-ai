<template>
    <main>
        <Grid :board="(board as Board)" :gameOver="gameOver" :knownMineCellsIds="knownMineCellsIds"
            :knownSafeCellsIds="knownSafeCellsIds" @cell-click="cellClick"></Grid>
    </main>
</template>

<script lang="ts">

import Grid from './components/Grid.vue'
import { GameConfigurations } from './constants/GameConfiguration'
import { Board } from './engine/Board'
import type { Cell } from './engine/Cell'
import { Solver } from './solver/Solver'


export default {
    name: 'App',
    components: {
        Grid
    },
    data() {
        const board = new Board(GameConfigurations.Intermediate)
        return {
            board: board,
            gameOver: false,
            knownSafeCellsIds: [] as number[],
            knownMineCellsIds: [] as number[],
            solver: new Solver(board)
        }
    },
    methods: {
        async cellClick(data: { cell: Cell }) {
            if (this.board.isInitialized()) {
                this.board.revealCell(data.cell)
            } else {
                this.board.initializeMinesAroundCell(data.cell)
            }
            if (this.board.isGameLost() || this.board.isGameWon()) {
                this.gameIsOver({ victory: this.board.isGameWon() })
            } else {
                console.log('updating')
                await this.solver.update()
                const previousKnownCellsLength = this.solver.knownSafeCellsIds.length + this.solver.knownMineCellsIds.length
                this.knownSafeCellsIds = this.solver.knownSafeCellsIds
                this.knownMineCellsIds = this.solver.knownMineCellsIds
                const knownCellsLength = this.solver.knownSafeCellsIds.length + this.solver.knownMineCellsIds.length
                console.log('updated')
                if (previousKnownCellsLength !== knownCellsLength) {
                    this.knownSafeCellsIds
                        .forEach(cellId => this.cellClick({ cell: this.board.getCellById(cellId)! }))
                }
            }

        },
        gameIsOver(data: { victory: boolean }) {
            this.knownSafeCellsIds = this.solver.knownSafeCellsIds
            this.knownMineCellsIds = this.solver.knownMineCellsIds

            this.gameOver = true
            console.log('game finished', data.victory ? 'you won' : 'you lost')
        }
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