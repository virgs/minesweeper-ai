<template>
    <button
        type="button"
        class="btn btn-primary"
        @contextmenu.prevent="preventRightClickDefaultBehavior"
        @mousedown="mouseDownEvent"
        @mouseup="mouseUpEvent"
        @dblclick="doubleClick"
        :class="classStyle"
        @touchend="touchEndEvent"
    >
        <div v-if="isRevealed">
            <span v-if="cell.hasMine" :style="bombStyle" :class="{ exploded: exploded }">
                <font-awesome-icon icon="fa-solid fa-bomb" :shake="exploded" />
            </span>
            <span v-else class="text" :style="numberStyle">
                {{ cell.minesAround }}
            </span>
        </div>
        <div v-else-if="cell.flagged" class="flag">
            <font-awesome-icon v-if="minesweeperStore.gameOver && !cell.hasMine" icon="fa-solid fa-xmark" shake />
            <font-awesome-icon v-else-if="cell.aiMarkedMine" icon="fa-solid fa-flag" class="aiFlag" />
            <font-awesome-icon v-else icon="fa-solid fa-flag" />
        </div>
    </button>
</template>

<script lang="ts">
import { MouseButtons } from '@/constants/MouseButtons'
import { NumberColor } from '@/constants/NumberColor'
import type { Cell } from '@/engine/Cell'
import { useMinesweeperStore } from '@/store/store'

export default {
    name: 'Cell',
    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            minesweeperStore,
        }
    },
    props: {
        cellId: {
            type: Number,
            required: true,
        },
    },
    data() {
        return {
            mouseButtonDown: 0,
        }
    },
    computed: {
        cell(): Cell {
            return this.minesweeperStore.board.getCellById(this.cellId)!
        },
        isRevealed() {
            return this.cell.isRevealed()
        },
        exploded() {
            return this.minesweeperStore.explodedBombId === this.cell.id
        },
        classStyle() {
            return {
                cell: true,
                flagged: this.cell.flagged,
                revealed: this.isRevealed,
                hint: this.cell.aiMarkedSafe,
                guess: this.cell.aiGuessed,
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
            if (this.minesweeperStore.explodedBombId === this.cell.id) {
                style.color = '#ff4136'
            }
            return style
        },
        numberColor(): string {
            return NumberColor(this.cell.minesAround)
        },
    },
    methods: {
        preventRightClickDefaultBehavior(event: Event) {
            // event.preventDefault()
        },
        mouseDownEvent(event: MouseEvent) {
            if (this.minesweeperStore.gameOver || this.cell.isRevealed()) {
                return
            }
            this.mouseButtonDown = event.buttons
            if (this.mouseButtonDown === MouseButtons.RIGHT) {
                if (this.cell.flagged) {
                    this.minesweeperStore.unflagCell(this.cellId)
                } else {
                    this.minesweeperStore.flagCell(this.cellId)
                }
            }
        },
        mouseUpEvent(event: MouseEvent) {
            if (this.cell.isNotRevealed() && !this.cell.flagged) {
                if (this.mouseButtonDown === MouseButtons.LEFT) {
                    if (this.cell.isNotRevealed() && !this.cell.flagged) {
                        this.minesweeperStore.cellClick(this.cell)
                    }
                }
            }
            this.mouseButtonDown = event.buttons
        },
        touchEndEvent(event: TouchEvent) {
            if (this.cell.isNotRevealed() && !this.cell.flagged) {
                if (this.cell.isNotRevealed() && !this.cell.flagged) {
                    this.minesweeperStore.cellClick(this.cell)
                }
            }
        },
        doubleClick(event: MouseEvent) {
            if (this.isRevealed) {
                this.minesweeperStore.cellChorded(this.cell)
            }
        },
    },
}
</script>

<style scoped>
.btn {
    padding: 0;
    height: var(--cell-size);
    width: var(--cell-size);
    font-weight: 700;
    font-style: normal;
    line-height: 0;
    background-color: #75caeb;
    transition: all ease 200ms;
}

.btn:hover {
    margin: 0;
    background-color: #a2dbf1;
}

.btn.flagged:hover,
.btn:focus,
.btn:active {
    margin: 0;
    background-color: #75caeb;
}

.btn.revealed,
.btn:disabled {
    background-color: #e8e8e8;
    border-color: #ddd;
    border-width: 2px;
    transition: all ease 200ms;
}

.exploded {
    font-size: 1.1rem;
    font-weight: bolder;
}

.btn.hint {
    border-color: #4ba84e;
}

.btn.guess {
    border-color: #eba161;
}

.flag {
    color: #ff4136;
}

.aiFlag {
    color: #e67818;
}
</style>
