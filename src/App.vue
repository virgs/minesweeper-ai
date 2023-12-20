<template>
    <main
        @mousedown="mouseDown = true"
        @mouseup="mouseDown = false"
        @mouseleave="mouseDown = false"
        @contextmenu.prevent="preventRightClickDefaultBehavior"
    >
        <div class="container p-2">
            <Dashboard :mouse-down="mouseDown"> </Dashboard>
            <Grid> </Grid>
        </div>
    </main>
</template>

<script lang="ts">
import Dashboard from './components/Dashboard.vue'
import Grid from './components/Grid.vue'

export default {
    name: 'App',
    components: {
        Grid,
        Dashboard,
    },
    data() {
        return {
            mouseDown: false,
        }
    },
    methods: {
        preventRightClickDefaultBehavior(event: Event) {},
    },
}
</script>

<style scoped>
.container {
    margin-top: 2px;
    width: min-content;
    max-width: min-content;
    min-width: 300px;
    border-radius: 2px;
    padding: 5px;
    background-color: #ebebeb;
    border-width: 4px;
    border-style: solid;
    border-color: white;
}
</style>
