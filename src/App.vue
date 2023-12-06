<template>
    <main>
        <Grid :board="(board as Board)" :gameOver="gameOver" :knownMineCellsIds="knownMineCellsIds"
            :knownSafeCellsIds="knownSafeCellsIds" @cell-click="cellClick"></Grid>
    </main>
</template>

<script lang="ts">

import { toRaw } from 'vue'
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

            while (true) {
                const previouslyKnownCells = this.knownSafeCellsIds.length + this.knownMineCellsIds.length
                if (this.board.isGameLost() || this.board.isGameWon()) {
                    this.gameIsOver({ victory: this.board.isGameWon() })
                    return
                }
                await this.solver.update()
                this.knownSafeCellsIds = this.solver.knownSafeCellsIds
                this.knownMineCellsIds = this.solver.knownMineCellsIds
                this.knownSafeCellsIds
                    .forEach(cellId => this.board.revealCell(this.board.getCellById(cellId)!))
                const currentlyKnownCells = this.knownSafeCellsIds.length + this.knownMineCellsIds.length
                if (previouslyKnownCells === currentlyKnownCells) {
                    break;
                }
            }
            console.log('mines', toRaw(this.knownMineCellsIds))
            console.log('safe', toRaw(this.knownSafeCellsIds))
            if (this.board.isGameLost() || this.board.isGameWon()) {
                this.gameIsOver({ victory: this.board.isGameWon() })
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