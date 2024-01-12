<template>
    <div id="grid" class="p-0">
        <div v-for="line in minesweeperStore.boardProperties.height" class="grid-row mx-auto">
            <div v-for="column in minesweeperStore.boardProperties.width">
                <CellVue :cell-id="minesweeperStore.boardProperties.width * (line - 1) + column - 1" />
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import CellVue from '@/components/Cell.vue'
import { useMinesweeperStore } from '@/store/store'

export default {
    name: 'Grid',
    components: { CellVue },
    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            minesweeperStore,
        }
    },
}
</script>

<style scoped>
@charset "UTF-8";

#grid {
    display: grid;
}

.grid-row {
    display: flex;
}

#grid ::-moz-selection {
    background-color: transparent;
}

#grid ::selection {
    background-color: transparent;
}
</style>
