<template>
    <div id="grid" class="p-0">
        <div v-for="line in minesweeperStore.boardProperties.height" class="btn-group mx-auto">
            <div v-for="column in minesweeperStore.boardProperties.width">
                <CellVue :cell-id="minesweeperStore.getCellByLocation(column - 1, line - 1)!.id" />
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
            minesweeperStore
        }
    }
}
</script>

<style scoped>
@charset "UTF-8";

#grid {
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
