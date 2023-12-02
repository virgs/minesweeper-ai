<template>
    <div id="grid">
        <div v-for="line in board.properties.height" style="display: inline-flex">
            <div v-for="column in board.properties.width">
                <CellVue @clicked="cellClick" :cell="board.getCellByLocation(column - 1, line - 1)!" :ai-hint="aiHint" />
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import CellVue from '@/components/Cell.vue'
import { Board, type BoardProperties } from '@/engine/Board'
import type { Cell } from '@/engine/Cell'
import type { PropType } from 'vue'

export default {
    name: 'Board',
    components: { CellVue },
    emits: ['cellClick', 'gameIsOver'],
    props: {
        board: {
            type: Object as PropType<Board>,
            required: true,
        },
        aiHint: {
            type: Object as PropType<Number[]>,
            required: true,
        },
    },
    data() {
        return {

        }
    },
    methods: {
        cellClick(data: { cell: Cell }) {
            this.$emit('cellClick', { cell: data.cell })
        },
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
randomizeMinesreveallCell
