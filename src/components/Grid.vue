<template>
    <div id="grid">
        <div v-for="line in board.properties.height" style="display: inline-flex">
            <div v-for="column in board.properties.width">
                <CellVue :cell="board.getCellByLocation(column - 1, line - 1)!" :knownMineCellsIds="knownMineCellsIds"
                    :knownSafeCellsIds="knownSafeCellsIds" @clicked="cellClick" :gameOver="gameOver"
                    :explodedBombId="explodedBombId" @doubleClicked="cellDoubleClicked" @flagged="cellFlagged"
                    @unflagged="cellUnflagged" />
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import CellVue from '@/components/Cell.vue'
import { Board } from '@/engine/Board'
import type { Cell } from '@/engine/Cell'
import type { PropType } from 'vue'

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
        knownSafeCellsIds: {
            type: Object as PropType<Number[]>,
            required: true,
        },
        knownMineCellsIds: {
            type: Object as PropType<Number[]>,
            required: true,
        },
    },
    data() {
        return {
            flaggedCells: [] as number[]
        }
    },
    methods: {
        cellClick(data: { cell: Cell }) {
            this.$emit('cellClick', { cell: data.cell })
        },
        cellDoubleClicked(data: { cell: Cell }) {
            const adjacentCells = this.board.getAdjacentCells(data.cell)
            const flagsAround = adjacentCells.filter(cell => this.flaggedCells.includes(cell.id)).length
            if (flagsAround === data.cell.minesAround) {
                adjacentCells
                    .filter(cell => cell.isNotRevealed() && !this.flaggedCells.includes(cell.id))
                    .forEach(cell => {
                        this.$emit('cellClick', { cell: cell })
                    })
            }
        },
        cellFlagged(data: { cell: Cell }) {
            this.flaggedCells.push(data.cell.id)
        },
        cellUnflagged(data: { cell: Cell }) {
            this.flaggedCells = this.flaggedCells
                .filter(cell => cell !== data.cell.id)
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
