<template>
    <div id="dashboard" class="row gx-0 mb-3 m-0 align-items-end justify-content-between">
        <div class="col-auto">
            <Pannel labelIcon="fa-solid fa-land-mine-on" label="Mines" :value="remainingMines.toString()">
            </Pannel>
        </div>
        <div class="col" style="text-align: center;">
            <NewGameButton :mouseDown="mouseDown"></NewGameButton>
        </div>
        <div class="col-auto">
            <Pannel labelIcon="fa-solid fa-hourglass" label="Time" :value="(timer / 10).toString().padEnd(3, '.0')">
            </Pannel>
        </div>
        <div class="col-12 mt-2">
            <AiControlPannel></AiControlPannel>
        </div>
    </div>
</template>

<script lang="ts">
import type { AiAction } from '@/constants/AiAction';
import type { BoardProperties } from '@/constants/BoardProperties';
import { mineSweeperStoreId, useMinesweeperStore } from '@/store/store';
import AiControlPannel from './AiControlPannel.vue';
import NewGameButton from './NewGameButton.vue';
import Pannel from './Pannel.vue';


export default {
    name: 'Dashboard',
    components: { Pannel, NewGameButton, AiControlPannel },
    props: {
        mouseDown: {
            type: Boolean,
            required: true,
        }
    },

    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            minesweeperStore
        }
    },
    data() {
        return {
            timer: 0,
            timerInterval: undefined as number | undefined,
        }
    },
    mounted() {
        this.minesweeperStore.$subscribe((mutation, state) => {
            // console.log(state)
            // mutation.storeId === mineSweeperStoreId
            if (state.gameIsRunning) {
                clearInterval(this.timerInterval)
                this.timerInterval = setInterval(() => {
                    if (!this.minesweeperStore.gameOver) {
                        this.timer += 1
                    }
                }, 100)
                this.timer = 0
            }

        })
    },
    watch: {
        // gameIsRunning() {
        //     if (this.gameIsRunning) {
        //         clearInterval(this.timerInterval)
        //         this.timerInterval = setInterval(() => {
        //             if (!this.gameOver) {
        //                 this.timer += 1
        //             }
        //         }, 100)
        //         this.timer = 0
        //     }
        // },
    },
    methods: {
        aiAction(action: AiAction): void {
            // this.$emit('aiAction', action)
        },
        startNewGame(configuration: { board: BoardProperties }): void {
            clearInterval(this.timerInterval)
            this.timer = 0
            this.minesweeperStore.createNewBoard(configuration.board)
        }
    },
    computed: {
        remainingMines(): number {
            return this.minesweeperStore.board.properties.mines - Math.max(this.minesweeperStore.board.cells
                .filter(cell => cell.flagged).length, 0)
        }
    }
}
</script>

<style scoped>
@charset "UTF-8";

#dashboard {
    padding: 5px 0;
}
</style>
