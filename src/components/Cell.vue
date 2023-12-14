<template>
    <button type="button" class="btn btn-light" @contextmenu.prevent="preventRightClickDefaultBehavior"
        @mousedown="mouseDownEvent" @mouseup="mouseUpEvent" @dblclick="doubleClick" :class="classStyle">
        <div v-if="cell.flagged" class="flag">
            <font-awesome-icon v-if="gameOver && !cell.hasMine" icon="fa-solid fa-xmark" />
            <font-awesome-icon v-else-if="cell.aiMarkedMine" icon="fa-solid fa-flag" style="color: dodgerblue" />
            <font-awesome-icon v-else icon="fa-solid fa-flag" />
        </div>
        <div v-else-if="isRevealed">
            <span v-if="cell.hasMine" :style="bombStyle">
                <font-awesome-icon icon="fa-solid fa-bomb" :shake="explodedBombId === cell.id" />
            </span>
            <span v-else class="text" :style="numberStyle">
                {{ cell.minesAround }}
            </span>
        </div>
    </button>
</template>

<script lang="ts">
import { MouseButtons } from '@/constants/MouseButtons'
import { NumberColor } from '@/constants/NumberColor'
import type { Cell } from '@/engine/Cell'
import { type PropType } from 'vue'

export default {
    name: 'Cell',
    emits: ['clicked', 'chorded'],
    props: {
        cell: {
            type: Object as PropType<Cell>,
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
    data() {
        return {
            mouseButtonDown: 0,
        }
    },
    computed: {
        isRevealed() {
            return this.cell.isRevealed()
        },
        classStyle() {
            return {
                cell: true,
                flagged: this.cell.flagged,
                revealed: this.isRevealed,
                hint: !this.isRevealed && this.cell.aiMarkedSafe,
            }
        },
        numberStyle() {
            const style: any = {
                color: this.numberColor,
                'font-weight': 'bolder',
            }
            return style
        },
        bombStyle() {
            const style: any = {
                color: 'black',
            }
            if (this.explodedBombId === this.cell.id) {
                style.color = 'red'
            }
            return style
        },
        numberColor(): string {
            return NumberColor(this.cell.minesAround)
        },
    },
    methods: {
        preventRightClickDefaultBehavior(event: Event) {
            event.preventDefault()
        },
        mouseDownEvent(event: MouseEvent) {
            if (this.gameOver || this.cell.isRevealed()) {
                return
            }
            this.mouseButtonDown = event.buttons
            if (this.mouseButtonDown === MouseButtons.RIGHT) {
                this.cell.flagged = !this.cell.flagged
                if (!this.cell.flagged) {
                    this.cell.aiMarkedMine = false
                }
            }
        },
        mouseUpEvent(event: MouseEvent) {
            if (this.cell.isNotRevealed() && !this.cell.flagged) {
                if (this.mouseButtonDown === MouseButtons.LEFT) {
                    if (this.cell.isNotRevealed() && !this.cell.flagged) {
                        this.$emit('clicked', { cell: this.cell })
                    }
                }
            }
            this.mouseButtonDown = event.buttons
        },
        doubleClick(event: MouseEvent) {
            if (this.isRevealed) {
                this.$emit('chorded', { cell: this.cell })
            }
        },
    },
}
</script>

<style scoped>
.btn:hover {
    margin: unset;
    background-color: #f1f1f1;
    border-color: #ddd;
}

.btn.flagged:hover,
.btn:focus,
.btn:active {
    margin: unset;
    border-color: #ddd;
    background-color: var(--bs-btn-bg);
}

.btn.revealed,

.btn:disabled {
    background-color: #e8e8e8;
    border-color: #ddd;
}

.cell {
    position: relative;
    padding: 0;
    height: var(--cell-size);
    width: var(--cell-size);
}

.hint {
    background-color: lightblue;
}

.cell div {
    position: relative;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    font-weight: 700;
    font-style: normal;
}


.cell.mine {
    background-color: #ec433c;
}

.flag {
    color: #ec433c;
}
</style>
