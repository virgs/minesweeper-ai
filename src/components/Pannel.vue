<template>
    <div class="mb-1">
        <!-- <font-awesome-icon icon="fa-solid fa-land-mine-on" /> -->
        <!-- <font-awesome-icon icon="fa-solid fa-hourglass" /> -->
        <label :for="id" class="form-label label"> {{ label }}</label>
        <input type="text" class="form-control text p-0 px-2 m-0" :id="id" readonly :value="value">
    </div>
</template>

<script lang="ts">

let counter = 0;

export default {
    name: 'Pannel',
    props: {
        label: {
            type: String,
            required: true,
        },
        value: {
            type: String,
            required: true,
        },
    },
    data() {
        return {
            id: 'pannel-input-' + counter++
        }
    }
}
</script>

<style scoped>
.form-label {
    margin: 0;
}

div label {
    color: #444;
    letter-spacing: 1px;
    font-weight: lighter;
}

div input {
    width: 100px;
    font-family: "F7-Segment";
    height: max-content;
    font-size: x-large;
    background-color: var(--background-color);
    ;
    border-radius: 3px;
    letter-spacing: 2px;
    border: 2px solid #ddd;
    color: #FF4136;
    text-align: right;
    pointer-events: none
}
</style>
