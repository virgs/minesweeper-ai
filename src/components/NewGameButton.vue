<template>
    <div class="btn-group">
        <button id="newGameButton" type="button" class="btn btn-light p-1 px-3" @click="clicked">
            <div v-html="smiley"></div>
        </button>
        <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown"
            aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown</span>
        </button>
        <ul class="dropdown-menu">
            <li>
                <button class="dropdown-item" type="button"
                    @click="$emit('newGameButtonClick', { board: GameConfigurations.Beginner })">BEGINNER</button>
            </li>
            <li>
                <button class="dropdown-item" type="button"
                    @click="$emit('newGameButtonClick', { board: GameConfigurations.Intermediate })">INTERMEDIATE</button>
            </li>
            <li><button class="dropdown-item" type="button"
                    @click="$emit('newGameButtonClick', { board: GameConfigurations.Expert })">EXPERT</button></li>
            <li>
                <hr class="dropdown-divider">
            </li>
        </ul>
    </div>
</template>

<script lang="ts">
import type { BoardProperties } from '@/constants/BoardProperties';
import { GameConfigurations } from '@/constants/GameConfiguration';
import Pannel from './Pannel.vue';


export default {
    name: 'Dashboard',
    components: { Pannel },
    emits: {
        newGameButtonClick: (configuration: { board: BoardProperties }) => true,
    },
    setup() {
        return {
            GameConfigurations
        }
    },
    props: {
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
    computed: {
        smiley() {
            // https://www.w3schools.com/charsets/ref_emoji_smileys.asp
            if (this.gameOver) {
                if (this.victory) {
                    return "&#128526;" //SMILING FACE WITH SUNGLASSES
                } else {
                    return "&#128565;" //DIZZY FACE
                }
            } else {
                if (this.mouseDown) {
                    return "&#128535;" //KISSING FACE
                } else {
                    return "&#128566;" //FACE WITHOUT MOUTH
                }
            }
        }
    },
    methods: {
        clicked() {
            this.$emit('newGameButtonClick', { board: GameConfigurations.Intermediate })
        }
    }
}
</script>

<style scoped>
@charset "UTF-8";

#newGameButton {
    font-size: x-large;
}
</style>
