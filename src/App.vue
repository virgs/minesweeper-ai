<template>
    <main @mousedown="mouseDown = true" @mouseup="mouseDown = false" @mouseleave="mouseDown = false">
        <div class="container p-2">
            <Dashboard :mouse-down="mouseDown">
            </Dashboard>
            <Grid>
            </Grid>
        </div>
    </main>
</template>

<script lang="ts">
import Dashboard from './components/Dashboard.vue'
import Grid from './components/Grid.vue'
import { AiAction } from './constants/AiAction'

export default {
    name: 'App',
    components: {
        Grid, Dashboard
    },
    data() {
        return {
            aiIsThinking: false,
            mouseDown: false
        }
    },
    methods: {
        async aiAction(aiAction: AiAction): Promise<void> {
            // switch (aiAction) {
            //     case AiAction.HINT:
            //         await this.solver.process()
            //         this.solver.knownMineCellsIds.concat(this.solver.knownSafeCellsIds)
            //             .sort(() => Math.random() - .5)
            //             .map(cellId => this.board.getCellById(cellId))
            //             .filter(cell => cell?.isNotRevealed())
            //             .filter(cell => !cell?.flagged)
            //             .forEach(cell => {
            //                 if (this.solver.knownMineCellsIds.includes(cell?.id)) {
            //                     cell!.flagged = true
            //                     cell!.aiMarkedMine = true
            //                 } else {
            //                     cell!.aiMarkedSafe = true
            //                 }
            //             })
            //         break;
            //     case AiAction.PLAY:
            //         this.startAi()
            //         break;
            //     case AiAction.GUESS:
            //         const guess = await this.solver.makeGuess()
            //         console.log(guess)
            //         this.cellClick({ cell: this.board.getCellById(guess.id)! })
            //         break;
            // }
        },
        async startAi() {
            // this.aiIsThinking = true
            // console.log('thinking')
            // while (true) {
            //     const previouslyKnownCells = this.solver.knownSafeCellsIds.length + this.solver.knownMineCellsIds.length
            //     await this.solver.process()
            //     this.updateCellStates()
            //     const currentlyKnownCells = this.solver.knownSafeCellsIds.length + this.solver.knownMineCellsIds.length
            //     if (this.isGameOver() || previouslyKnownCells === currentlyKnownCells) {
            //         console.log(this.isGameOver(), previouslyKnownCells, currentlyKnownCells)
            //         break
            //     }
            // }
            // // this.updateCellStates()
            // this.aiIsThinking = false
            // console.log('done thinking')
            // if (this.isGameOver()) {
            //     this.finishGame()
            // }
        },
        // updateCellStates(): void {
        //     this.solver.knownSafeCellsIds
        //         .forEach((cellId) => {
        //             const cell = this.board.getCellById(cellId)!
        //             cell.aiMarkedSafe = true
        //             if (!cell.flagged) {
        //                 this.board.revealCell(cell)
        //                 if (this.board.isGameLost()) {
        //                     this.explodedBombId = cell.id
        //                 }
        //             }
        //         })
        //     this.solver.knownMineCellsIds
        //         .forEach((cellId) => {
        //             const cell = this.board.getCellById(cellId)!
        //             if (!cell.flagged) {
        //                 cell.flagged = true
        //                 cell.aiMarkedMine = true
        //             }
        //         })
        //     // console.log(solver.knownMineCellsIds)
        //     // console.log(solver.knownSafeCellsIds)
        // },
        // finishGame() {
        //     this.gameIsRunning = false
        //     this.gameOver = true
        //     this.victory = this.board.isGameWon()
        //     console.log('game finished. ' + (this.victory ? 'You won!' : 'You lost!'))
        // },
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
