<template>
    <div @click="click" :class="{ cell: true, revealed: cell.isRevealed(), hint: hint }">
        <small style="color: maroon; font-size: 10px;"> {{ cell.id }}</small>
        <div v-if="cell.isRevealed()">
            <i v-if="cell.hasMine" style="color: black">
                <font-awesome-icon icon="fa-solid fa-bomb" />
            </i>
            <i v-else :style="style">
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
    computed: {
        style() {
            const style: any = {
                color: this.numberColor,
            }
            return style
        },
        hint() {
            return this.cell.isNotRevealed() && toRaw(this.aiHint).includes(this.cell.id)
        },
        numberColor(): string {
            switch (this.cell.minesAround) {
                case 1:
                    return 'blue'
                case 2:
                    return 'green'
                case 3:
                    return 'red'
                case 4:
                    return 'darkblue'
                case 5:
                    return 'maroon'
                case 6:
                    return 'turquoise'
                case 7:
                    return 'purple'
                case 8:
                    return 'gray-dark'
            }

            return 'transparent'
        },
    },
    methods: {
        click() {
            this.$emit('clicked', { cell: this.cell })
        },
    },
}
</script>

<style scoped>
#grid.disabled .cell {
    pointer-events: none;
}

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

.cell::before {
    /* top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 1;
    content: '';
    position: absolute;
    background-color: #d1d1d1; */
}

.cell::after {
    /* top: 50%;
    left: 50%;
    content: '';
    position: absolute;
    transform: translate(-50%, -50%); */
}

.cell:hover {
    background-color: #ebebeb;
}

.cell.revealed {
    border: 1px solid #b8b8b8;
    cursor: default;
}

.cell.revealed {
    /* display: none; */
}

#grid .cell.mine {
    background-color: #ec433c;
}

#grid .cell.mine::after {
    /* border-radius: 50%;
    width: 12px;
    height: 12px;
    background-color: #333; */
}

/* 
#grid .cell.incorrect .flag::before,
#grid .cell.incorrect .flag::after {
    top: 50%;
    z-index: 1;
    left: -13px;
    height: 2px;
    width: 16px;
    content: '';
    position: absolute;
    background-color: black;
} */
/* 
#grid .cell.incorrect .flag::before {
    transform: rotate(-45deg);
}

#grid .cell.incorrect .flag::after {
    transform: rotate(45deg);
} */

#grid .cell.mousedown {
    border: none;
}
</style>
