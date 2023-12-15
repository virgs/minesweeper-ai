<template>
    <button type="button" class="btn btn-primary" @contextmenu.prevent="preventRightClickDefaultBehavior"
        @mousedown="mouseDownEvent" @mouseup="mouseUpEvent" @dblclick="doubleClick" :class="classStyle">
        <div v-if="isRevealed">
            <span v-if="cell.hasMine" :style="bombStyle">
                <font-awesome-icon icon="fa-solid fa-bomb" :shake="minesweeperStore.explodedBombId === cell.id" />
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
import { mapActions } from 'pinia'

export default {
    name: 'Cell',
    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            minesweeperStore
        }
    },
    props: {
        cellId: {
            type: Number,
            required: true,
        }
    },
    data() {
        return {
            mouseButtonDown: 0,
        }
    },
    computed: {
        ...mapActions(useMinesweeperStore, ['getCellById']),
        cell(): Cell {
            const it = this.minesweeperStore.getCellById(this.cellId)
            return it
        },
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
        ...mapActions(useMinesweeperStore, ['unflagCell', 'flagCell', 'cellClick']),
        preventRightClickDefaultBehavior(event: Event) {
            event.preventDefault()
        },
        mouseDownEvent(event: MouseEvent) {
            if (this.minesweeperStore.gameOver || this.cell.isRevealed()) {
                return
            }
            this.mouseButtonDown = event.buttons
            if (this.mouseButtonDown === MouseButtons.RIGHT) {
                this.cell.flagged = !this.cell.flagged
                if (!this.cell.flagged) {
                    this.unflagCell(this.cellId)
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
}

.cell {
    position: relative;
    padding: 0;
    height: var(--cell-size);
    width: var(--cell-size);
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
    background-color: #ff4136;
}

.hint {
    transition: all ease 200ms;
    background-color: #24a428;
}

.flag {
    color: #ff4136;
}

.aiFlag {
    color: #e67818;
}
</style>
