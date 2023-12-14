<template>
    <div id="dashboard" class="row g-0 m-0 align-items-center justify-content-md-center">
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
    </div>
</template>

<script lang="ts">
import type { BoardProperties } from '@/constants/BoardProperties';
import type { Board } from '@/engine/Board';
import type { PropType } from 'vue';
import NewGameButton from './NewGameButton.vue';
import Pannel from './Pannel.vue';
import { GameConfigurations } from '@/constants/GameConfiguration';


export default {
    name: 'Dashboard',
    components: { Pannel, NewGameButton },
    emits: {
        newGame: (configuration: { board: BoardProperties }) => true,
        update: (aiAction: string) => true,
    },
    props: {
        board: {
            type: Object as PropType<Board>,
            required: true,
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
        this.$emit('newGame', { board: this.currentGameConfiguration })
        document.onkeyup = (key: KeyboardEvent) => {
            switch (key.code) {
                case 'F2': {
                    this.startNewGame({ board: this.currentGameConfiguration })
                    break
                }
            }
        };
        setInterval(() => {
            if (!this.gameOver) {
                this.timer += 1
            }
        }, 100)
    },
    data() {
        return {
            timer: 0,
            currentGameConfiguration: GameConfigurations.Intermediate
        }
    },
    methods: {
        startNewGame(configuration: { board: BoardProperties }) {
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
    /* text-align: center; */
}
</style>
