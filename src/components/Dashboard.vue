<template>
    <div id="dashboard" class="row g-0 my-2 m-0 align-items-end">
        <div class="col-auto">
            <Pannel label="Mines" :value="remainingMines.toString()"></Pannel>
        </div>
        <div class="col" style="text-align: center;">
            <NewGameButton :victory="victory" :mouseDown="mouseDown" :gameOver="gameOver"
                @newGameButtonClick="startNewGame"></NewGameButton>
        </div>
        <div class="col-auto">
            <Pannel label="Time" :value="(timer / 10).toString().padEnd(3, '.0')"></Pannel>
        </div>
        <div class="w-100 divider my-2"></div>
        <div class="col-auto ms-auto">
            <AiControlPannel></AiControlPannel>
        </div>
    </div>
</template>

<script lang="ts">
import type { BoardProperties } from '@/constants/BoardProperties';
import type { Board } from '@/engine/Board';
import type { PropType } from 'vue';
import NewGameButton from './NewGameButton.vue';
import Pannel from './Pannel.vue';
import AiControlPannel from './AiControlPannel.vue';
import { GameConfigurations } from '@/constants/GameConfiguration';


export default {
    name: 'Dashboard',
    components: { Pannel, NewGameButton, AiControlPannel },
    emits: {
        newGame: (configuration: { board: BoardProperties }) => true,
        update: (aiAction: string) => true,
    },
    props: {
        board: {
            type: Object as PropType<Board>,
            required: true,
        },
        gameIsRunning: {
            type: Boolean,
            required: false,
        },
        victory: {
            type: Boolean,
            required: false,
        },
        mouseDown: {
            type: Boolean,
            required: true,
        },
        gameOver: {
            type: Boolean,
            required: true,
        },
    },
    mounted() {
        this.startNewGame({ board: this.currentGameConfiguration })
        document.onkeyup = (key: KeyboardEvent) => {
            switch (key.code) {
                case 'F2': {
                    this.startNewGame({ board: this.currentGameConfiguration })
                    break
                }
            }
        };
    },
    data() {
        return {
            timer: 0,
            timerInterval: undefined as number | undefined,
            currentGameConfiguration: GameConfigurations.Intermediate
        }
    },
    watch: {
        gameIsRunning() {
            if (this.gameIsRunning) {
                clearInterval(this.timerInterval)
                this.timerInterval = setInterval(() => {
                    if (!this.gameOver) {
                        this.timer += 1
                    }
                }, 100)
                this.timer = 0
            }
        },
    },
    methods: {
        startNewGame(configuration: { board: BoardProperties }) {
            clearInterval(this.timerInterval)
            this.timer = 0
            this.currentGameConfiguration = configuration.board
            this.$emit('newGame', configuration)
        }
    },
    computed: {
        remainingMines() {
            return this.board.properties.mines - Math.max(this.board.cells
                .filter(cell => cell.flagged).length, 0)
        }
    }
}
</script>

<style scoped>
@charset "UTF-8";

#dashboard {
    width: 100%;
    padding: 5px 0;
}

.divider {
    height: 0;
    margin: var(--bs-dropdown-divider-margin-y) 0;
    overflow: hidden;
    border-top: 1px solid #ddd;
    opacity: 1;
}
</style>
