<template>
    <div id="dashboard" class="row gx-0 mb-3 m-0 align-items-end justify-content-between">
        <div class="col-auto">
            <Pannel labelIcon="fa-solid fa-land-mine-on" :value="remainingMines.toString()"> </Pannel>
        </div>
        <div class="col" style="text-align: center">
            <NewGameButton :mouseDown="mouseDown"></NewGameButton>
        </div>
        <div class="col-auto">
            <Pannel labelIcon="fa-solid fa-hourglass" :value="timer"> </Pannel>
        </div>
        <div class="col-12 mt-2">
            <AiControlPannel></AiControlPannel>
        </div>
    </div>
</template>

<script lang="ts">
import { useMinesweeperStore } from '@/store/store'
import AiControlPannel from './AiControlPannel.vue'
import NewGameButton from './NewGameButton.vue'
import Pannel from './Pannel.vue'

export default {
    name: 'Dashboard',
    components: { Pannel, NewGameButton, AiControlPannel },
    props: {
        mouseDown: {
            type: Boolean,
            required: true,
        },
    },
    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            minesweeperStore,
        }
    },
    computed: {
        remainingMines(): number {
            return (
                this.minesweeperStore.board.properties.mines -
                Math.max(this.minesweeperStore.board.cells.filter((cell) => cell.flagged).length, 0)
            )
        },
        timer(): string {
            const intPart = Math.floor(this.minesweeperStore.timer / 10)
            const fractPart = this.minesweeperStore.timer % 10

            return `${intPart}.${fractPart}`
        },
    },
}
</script>

<style scoped>
@charset "UTF-8";

#dashboard {
    padding: 5px 0;
}
</style>
