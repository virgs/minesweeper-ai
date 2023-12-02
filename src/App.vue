<template>
    <main>
        <Grid style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);"
            :properties="boardProperties" @click="gridClicked" @gameIsOver="gameIsOver"></Grid>
    </main>
</template>

<script lang="ts">

import Grid from './components/Grid.vue'
import type { Board } from './engine/Board'
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
        return {
            boardProperties: custom
        }
    },
    methods: {
        gridClicked(data: { board: Board, revealedCells: Cell[] }) {
            if (!ai) {
                ai = new MineSweeperSolver(data.board)
            }
            ai.updatePropositions(data.revealedCells)
            console.log('safe cells to click on', ai.selectUnreveilledSafeCell().map(cell => cell.id))
            // console.log(data.board.getNotRevealedCells())
        },
        gameIsOver(data: { victory: boolean }) {
            console.log('game finished', data.victory ? 'you won' : 'you lost')
        }
    }
}
</script>
