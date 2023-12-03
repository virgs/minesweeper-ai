<template>
    <main>
        <Grid :board="(board as Board)" :ai-hint="aiHint" @cell-click="cellClick"></Grid>
    </main>
</template>

<script lang="ts">

import Grid from './components/Grid.vue'
import { Board } from './engine/Board'
import type { Cell } from './engine/Cell'
import { MineSweeperSolver } from './engine/MineSweeperSolver'

const beginner = { height: 9, width: 9, mines: 10 }
const intermediate = { height: 16, width: 16, mines: 40 }
const expert = { height: 16, width: 30, mines: 99 }

const custom = { height: 10, width: 10, mines: 12 }

let ai: MineSweeperSolver
export default {
    name: 'App',
    components: {
        Grid
    },
    data() {
        const board = new Board(intermediate)
        return {
            board: board,
            aiHint: [] as Number[]
        }
    },
    methods: {
        async cellClick(data: { cell: Cell }) {
            let revealedCells = []
            if (this.board.isInitialized()) {
                revealedCells = this.board.revealCell(data.cell)
            } else {
                revealedCells = this.board.initializeMinesAroundCell(data.cell)
            }
            if (this.board.isGameLost() || this.board.isGameWon()) {
                this.gameIsOver({ victory: this.board.isGameWon() })
            } else {
                if (!ai) {
                    ai = new MineSweeperSolver(this.board as Board)
                }
                ai.updatePropositions(revealedCells)
                const safeCells = ai.selectUnrevealedSafeCell().map(cell => cell.id)
                if (safeCells.length > 0) {
                    this.cellClick({ cell: this.board.getCellById(safeCells[0])! })
                    return
                }
                this.aiHint = safeCells
                console.log('safe cells to click on', safeCells)
            }

        },
        gameIsOver(data: { victory: boolean }) {
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
</style>