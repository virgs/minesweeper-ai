<template>
    <div id="dashboard" class="row text">
        <div class="col">
            <Pannel label="Mines" :value="remainingMines"></Pannel>
        </div>
        <div class="col">
            <div class="btn-group">
                <button type="button" class="btn btn-light" @click="newGameClicked">
                    <!-- https://www.w3schools.com/charsets/ref_emoji_smileys.asp-->
                    <template v-if="gameOver">
                        <div v-if="victory">&#128526;</div>
                        <div v-else>&#128565;</div>
                    </template>
                    <template v-else>
                        <div v-if="mouseDown">&#128535;</div>
                        <div v-else>&#128566;</div>
                    </template>
                </button>
                <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    <span class="visually-hidden">Toggle Dropdown</span>
                </button>
                <ul class="dropdown-menu">
                    <li><button class="dropdown-item" type="button">BEGINNER</button></li>
                    <li><button class="dropdown-item" type="button">INTERMEDIATE</button></li>
                    <li><button class="dropdown-item" type="button">EXPERT</button></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li><button class="dropdown-item" type="button">CUSTOM</button></li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import type { BoardProperties } from '@/constants/BoardProperties';
import { GameConfigurations } from '@/constants/GameConfiguration';
import type { Board } from '@/engine/Board';
import type { PropType } from 'vue';
import Pannel from './Pannel.vue';


export default {
    name: 'Dashboard',
    components: { Pannel },
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
    methods: {
        newGameClicked() {
            console.log('click')
            this.$emit('newGame', { board: GameConfigurations.Intermediate })
        }
    },
    computed: {
        remainingMines() {
            return Math.max(this.board.cells
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
    text-align: center;
}

#newGameButton {
    font-size: 40px;
    width: 50px;
    height: 50px;
    border-width: 2px;
    border-style: solid;
    border-color: white #9e9e9e #9e9e9e white;
}

#newGameButton:active {
    padding-left: 2px;
    padding-top: 2px;
    border: 2px solid #b8b8b8;
}

#newGameButton div {
    position: relative;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>
