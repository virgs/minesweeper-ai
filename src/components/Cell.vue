<template>
    <div @click="click" @mouseenter="mouseOver = true" @mousedown="mouseDown = true" @mouseup="mouseDown = false"
        @mouseleave="mouseOver = false" :class="classStyle">
        <!-- <small style="color: maroon; font-size: 8px;"> {{ cell.id }}</small> -->
        <div v-if="cell.isRevealed()">
            <i v-if="cell.hasMine" style="color: black">
                <font-awesome-icon icon="fa-solid fa-bomb" />
            </i>
            <i v-else :style="numberStyle">
                {{ cell.minesAround }}
            </i>
        </div>
    </div>
</template>

<script lang="ts">
import type { Cell } from '@/engine/Cell'
import { toRaw, type PropType } from 'vue'

export default {
    name: 'Cell',
    emits: ['clicked'],
    props: {
        cell: {
            type: Object as PropType<Cell>,
            required: true,
        },
        aiHint: {
            type: Object as PropType<Number[]>,
            required: true,
        },
    },
    data() {
        return {
            flagged: false,
            mouseOver: false,
            mouseDown: false
        }
    },
    computed: {
        classStyle() {
            const revealed = this.cell.isRevealed()
            return {
                cell: true,
                revealed: revealed,
                pressed: !revealed && this.mouseDown && this.mouseOver,
                hover: !revealed && !this.mouseDown && this.mouseOver,
                hint: !revealed && toRaw(this.aiHint).includes(this.cell.id)
            }

        },
        numberStyle() {
            const style: any = {
                color: this.numberColor,
            }
            return style
        },
        numberColor(): string {
            switch (this.cell.minesAround) {
                case 1:
                    return '#0703f4'
                case 2:
                    return '#2a7a00'
                case 3:
                    return '#eb0206'
                case 4:
                    return '#02027c'
                case 5:
                    return '#7b0403'
                case 6:
                    return '#2b7c7b'
                case 7:
                    return '#000000'
                case 8:
                    return '#7c7c7c'
            }

            return 'transparent'
        },
    },
    methods: {
        click() {
            if (this.cell.isNotRevealed()) {
                this.$emit('clicked', { cell: this.cell })
            }
        },
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
</style>
