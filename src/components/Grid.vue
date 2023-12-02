<template>
    <div id="grid">
        <div v-for="line in properties?.height" style="display: inline-flex">
            <div v-for="column in properties?.width">
                <CellVue @clicked="cellClick" :cell="board.getCellByLocation(column - 1, line - 1)!" />
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
    emits: ['click', 'gameIsOver'],
    props: {
        properties: {
            type: Object as PropType<BoardProperties>,
            required: true,
        },
    },
    data() {
        return {
            board: new Board(this.properties),
        }
    },
    methods: {
        cellClick(data: { cell: Cell }) {
            let revealedCells = []
            if (this.board.isInitialized()) {
                revealedCells = this.board.revealCell(data.cell)
            } else {
                revealedCells = this.board.initializeMinesAroundCell(data.cell)
            }
            if (this.board.isGameLost() || this.board.isGameWon()) {
                this.$emit('gameIsOver', { victory: this.board.isGameWon() })
            } else {
                this.$emit('click', { board: this.board, revealedCells: revealedCells })
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
