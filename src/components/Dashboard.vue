<template>
    <div>
    </div>
</template>

<script lang="ts">
import type { Board } from '@/engine/Board'
import type { Cell } from '@/engine/Cell'
import type { PropType } from 'vue'


export default {
    name: 'Dashboard',
    components: {},
    emits: ['newGame', 'aiAction'],
    props: {
        board: {
            type: Object as PropType<Board>,
            required: true,
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
    },
}
</script>

<style>
@charset "UTF-8";

#grid {
    position: relative;
    display: grid;
}

#grid ::-moz-selection {
    background-color: transparent;
}

#grid ::selection {
    background-color: transparent;
}

#grid .row {
    display: flex;
}
</style>
