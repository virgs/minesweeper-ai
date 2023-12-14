<template>
    <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label text"> {{ label }}</label>
        <input type="text" class="form-control text" id="formGroupExampleInput" readonly :value="value">
    </div>
</template>

<script lang="ts">
export default {
    name: 'Pannel',
    props: {
        label: {
            type: String,
            required: true,
        },
        value: {
            type: Number,
            required: true,
        },
    },
}
</script>

<style scoped>
div input {
    width: 100px;
    height: max-content;
    background-color: black;
    color: red;
    text-align: right;
}
</style>
