<template>
    <div @contextmenu.prevent="preventRightClickDefaultBehavior" @mouseenter="mouseEnter" @mousedown="mouseDownEvent"
        @mouseup="mouseUpEvent" @mouseleave="mouseLeaveEvent" @dblclick="doubleClick" :class="classStyle">
        <!-- <small style="color: maroon; font-size: 8px;"> {{ cell.id }}</small> -->
        <div v-if="cell.isRevealed()">
            <i v-if="cell.hasMine" style="color: black">
                <font-awesome-icon icon="fa-solid fa-bomb" />
            </i>
            <i v-else :style="numberStyle">
                {{ cell.minesAround }}
            </i>
        </div>
        <div v-else-if="flagged" class="flag">
            <font-awesome-icon icon="fa-solid fa-flag" />
        </div>
    </div>
</template>

<script lang="ts">
import type { Cell } from '@/engine/Cell'
import { MouseButtons } from '@/engine/MouseButtons'
import { NumberColor } from '@/engine/NumberColor'
import { toRaw, type PropType } from 'vue'

export default {
    name: 'Cell',
    emits: ['clicked', 'doubleClicked'],
    props: {
        cell: {
            type: Object as PropType<Cell>,
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
            flagged: false,
            mouseOver: false,
            mouseButtonDown: 0
        }
    },
    watch: {
        knownMineCellsIds() {
            this.flagged = toRaw(this.knownMineCellsIds).includes(this.cell.id)
        }
    },
    computed: {
        classStyle() {
            const revealed = this.cell.isRevealed()
            return {
                cell: true,
                revealed: revealed,
                pressed: !revealed && !this.flagged && this.mouseButtonDown === MouseButtons.LEFT && this.mouseOver,
                hover: !revealed && !this.flagged && this.mouseButtonDown === MouseButtons.NONE && this.mouseOver,
                hint: !revealed && toRaw(this.knownSafeCellsIds).includes(this.cell.id)
            }

        },
        numberStyle() {
            const style: any = {
                color: this.numberColor,
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
            this.mouseOver = true
            this.mouseButtonDown = event.buttons
        },
        mouseLeaveEvent(event: MouseEvent) {
            this.mouseOver = false
            this.mouseButtonDown = MouseButtons.NONE
        },
        mouseDownEvent(event: MouseEvent) {
            this.mouseButtonDown = event.buttons
        },
        mouseUpEvent(event: MouseEvent) {
            if (this.mouseButtonDown === MouseButtons.LEFT) {
                if (this.cell.isNotRevealed() && !this.flagged) {
                    this.$emit('clicked', { cell: this.cell })
                }
            } else if (this.mouseButtonDown === MouseButtons.RIGHT) {
                this.flagged = !this.flagged
            }

            this.mouseButtonDown = event.buttons
        },
        doubleClick(event: MouseEvent) {
            if (this.cell.isRevealed()) {
                console.log('double')
                this.$emit('doubleClicked', { cell: this.cell })
            }
        }
    },
}
</script>

<style scoped>
.cell {
    text-align: center;
    cursor: pointer;
    height: 28px;
    width: 28px;
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
    font-size: 14px;
    font-weight: 700;
    font-style: normal;
    position: absolute;
    line-height: 24px;
}



.cell.hover {
    background-color: #ebebeb;
}

.cell.revealed {
    border: 1px solid #b8b8b8;
    cursor: default;
}

.cell.pressed {
    border: 1px solid #b8b8b8;
    cursor: default;
}

.cell.mine {
    background-color: #ec433c;
}

.flag {
    color: #ec433c;
}
</style>
