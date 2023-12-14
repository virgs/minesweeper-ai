<template>
    <div>
        <label for="ai-control-pannel" class="form-label label">
            <font-awesome-icon icon="fa-solid fa-robot" />
        </label>
    </div>
    <div id="ai-control-pannel" class="btn-group text" role="group" aria-label="AI options">
        <!-- <label class="form-label label"> <font-awesome-icon icon="fa-solid fa-robot" /> </label> -->
        <button type="button" class="btn btn-info">
            <!-- Hint -->
            <font-awesome-icon icon="fa-solid fa-wand-sparkles" />
        </button>
        <button type="button" class="btn btn-success">
            <!-- Play safe -->
            <font-awesome-icon icon="fa-solid fa-play" />
        </button>
        <button type="button" class="btn btn-danger">
            <!-- Guess -->
            <font-awesome-icon icon="fa-solid fa-dice" />
        </button>
    </div>
</template>

<script lang="ts">

export default {
    name: 'AiControlPannel',
    data() {
        return {
        }
    }
}
</script>

<style scoped>
label {
    margin: 0;
    margin-bottom: 2px;
    color: #444;
    letter-spacing: 1px;
    font-weight: lighter;
}
</style>
