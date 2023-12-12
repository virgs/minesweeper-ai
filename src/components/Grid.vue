<template>
    <div id="grid">
        <div v-for="line in board.properties.height" style="display: inline-flex">
            <div v-for="column in board.properties.width">
                <CellVue
                    :cell="board.getCellByLocation(column - 1, line - 1)!"
                    @clicked="cellClick"
                    :gameOver="gameOver"
                    :explodedBombId="explodedBombId"
                    @chorded="cellChorded"
                />
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import CellVue from '@/components/Cell.vue'
import { Board } from '@/engine/Board'
import type { Cell } from '@/engine/Cell'
import { type PropType } from 'vue'

export default {
    name: 'Grid',
    components: { CellVue },
    emits: ['cellClick'],
    props: {
        board: {
            type: Object as PropType<Board>,
            required: true,
        },
        explodedBombId: {
            type: Number,
            required: false,
        },
        gameOver: {
            type: Boolean,
            required: true,
        },
    },
    methods: {
        cellClick(data: { cell: Cell }) {
            this.$emit('cellClick', { cell: data.cell })
        },
        cellChorded(data: { cell: Cell }) {
            const adjacentCells = this.board.getAdjacentCells(data.cell)
            const flagsAround = adjacentCells.filter((cell) => cell.flagged).length
            if (flagsAround === data.cell.minesAround) {
                adjacentCells
                    .filter((cell) => cell.isNotRevealed() && !cell.flagged)
                    .forEach((cell) => this.$emit('cellClick', { cell: cell }))
            }
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
