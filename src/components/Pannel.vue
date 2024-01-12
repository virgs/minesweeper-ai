<template>
    <div>
        <label :for="id" class="form-label label">
            <font-awesome-icon v-if="labelIcon" :icon="labelIcon" />
        </label>
        <input type="text" class="form-control text p-0 px-2 m-0" :id="id" readonly :value="value" />
    </div>
</template>

<script lang="ts">
let counter = 0

export default {
    name: 'Pannel',
    props: {
        labelIcon: {
            type: String,
            required: false,
        },
        value: {
            type: String,
            required: true,
        },
    },
    data() {
        return {
            id: 'pannel-input-' + counter++,
        }
    },
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

div input {
    width: 80px;
    font-family: '7-segment';
    height: max-content;
    font-size: x-large;
    background-color: var(--background-color);
    border-radius: 3px;
    letter-spacing: 2px;
    border: 2px solid #ddd;
    color: #ff4136;
    text-align: right;
    pointer-events: none;
}
</style>
