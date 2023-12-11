<template>
    <div @contextmenu.prevent="preventRightClickDefaultBehavior" @mouseenter="mouseEnter" @mousedown="mouseDownEvent"
        :cell-id="cell.id" @mouseup="mouseUpEvent" @mouseleave="mouseLeaveEvent" @dblclick="doubleClick"
        :class="classStyle">
        <!-- remove these cell-id attributes -->
        <!-- <small style="position: absolute;color: maroon; font-size: 8px; font-weight: bold;"> {{ cell.id }}</small> -->
        <div v-if="cell.flagged" class="flag">
            <font-awesome-icon v-if="gameOver && !cell.hasMine" icon="fa-solid fa-xmark" />
            <font-awesome-icon v-else-if="cell.aiMarkedMine" icon="fa-solid fa-flag" style="color: dodgerblue;" />
            <font-awesome-icon v-else icon="fa-solid fa-flag" />
        </div>
        <div v-else-if="isRevealed">
            <i v-if="cell.hasMine" :style="bombStyle">
                <font-awesome-icon icon="fa-solid fa-bomb" :shake="explodedBombId === cell.id" />
            </i>
            <i v-else :style="numberStyle" :cell-id="cell.id">
                {{ cell.minesAround }}
            </i>
        </div>
    </div>
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
            mouseOver: false,
            mouseButtonDown: 0
        }
    },
    computed: {
        isRevealed() {
            return this.cell.isRevealed()
        },
        classStyle() {
            return {
                cell: true,
                revealed: this.isRevealed,
                pressed: !this.isRevealed && !this.cell.flagged && this.mouseButtonDown === MouseButtons.LEFT && this.mouseOver,
                hover: !this.isRevealed && !this.cell.flagged && !this.gameOver && this.mouseButtonDown === MouseButtons.NONE && this.mouseOver,
                hint: !this.isRevealed && this.cell.aiMarkedSafe
            }

        },
        numberStyle() {
            const style: any = {
                color: this.numberColor,
            }
            return style
        },
        bombStyle() {
            const style: any = {
                color: 'black'
            }
            if (this.explodedBombId === this.cell.id) {
                style.color = 'red'
            }
            return style
        },
        numberColor(): string {
            return NumberColor(this.cell.minesAround);
        },
    },
    methods: {
        preventRightClickDefaultBehavior(event: Event) {
            event.preventDefault();
        },
        mouseEnter(event: MouseEvent) {
            if (this.gameOver) {
                return
            }
            this.mouseOver = true
            this.mouseButtonDown = event.buttons
        },
        mouseLeaveEvent(event: MouseEvent) {
            this.mouseOver = false
            this.mouseButtonDown = MouseButtons.NONE
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
        }
    },
}
</script>

<style scoped>
.cell {
    text-align: center;
    height: 26px;
    width: 26px;
    position: relative;
    background-color: #d1d1d1;
    border-width: 3px;
    border-style: solid;
    border-color: white #9e9e9e #9e9e9e white;
}

.hint {
    background-color: lightblue;
}

.cell i {
    left: 0;
    bottom: 0;
    margin: 0;
    width: 100%;
    font-size: 16px;
    font-weight: 700;
    font-style: normal;
    position: absolute;
    line-height: 24px;
}


.hover {
    background-color: #ebebeb;
    cursor: pointer;
}

.cell.revealed {
    border: 1px solid #b8b8b8;
}

.cell.pressed {
    border: 1px solid #b8b8b8;
}

.cell.mine {
    background-color: #ec433c;
}

.flag {
    color: #ec433c;
}
</style>
@/constants/MouseButtons@/constants/NumberColor