<template>
    <div class="btn-group">
        <button id="newGameButton" type="button" class="btn btn-light p-1 px-3" @click="clicked">
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
            <!-- <li>
                <hr class="dropdown-divider">
            </li> -->
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
