<template>
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="modalLabel">Custom board properties</h1>
            </div>
            <div class="modal-body">
                <div class="input-group my-3 has-validation">
                    <div class="form-floating">
                        <input type="number" class="form-control text" aria-label="widthInput" id="widthInput"
                            v-model="width">
                        <label for="widthInput">
                            <font-awesome-icon icon="fa-solid fa-arrows-left-right" />
                            Width</label>
                        <div class="invalid-feedback">
                            Please set a number between 10 and 100
                        </div>
                    </div>
                    <div class="form-floating mx-2">
                        <input type="number" class="form-control text" aria-label="heightInput" id="heightInput"
                            v-model="height">
                        <label for="heightInput">
                            <font-awesome-icon icon="fa-solid fa-arrows-up-down" />
                            Height</label>
                        <div class="invalid-feedback">
                            Please set a number between 10 and 100
                        </div>
                    </div>
                    <div class="form-floating">
                        <input type="number" class="form-control text" aria-label="minesInput" id="minesInput"
                            v-model="mines">
                        <label for="minesInput">
                            <font-awesome-icon icon="fa-solid fa-land-mine-on" />
                            Mines
                        </label>
                        <div class="valid-tooltip">
                            Looks good!
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer py-2">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal"
                    @click="$emit('newGameButtonClick', { board: GameConfigurations.Expert })">Start</button>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import type { BoardProperties } from '@/constants/BoardProperties';
import { GameConfigurations } from '@/constants/GameConfiguration';


export default {
    name: 'CustomBoardModal',
    emits: {
        newGameButtonClick: (configuration: { board: BoardProperties }) => true,
    },
    setup() {
        return {
            GameConfigurations
        }
    },
    data() {
        return {
            height: 16,
            width: 16,
            mines: 40,
        }
    },
    watch: {
        height() {
            this.height = Math.min(50, Math.min(10, this.height))
        },
        width() {
            this.width = Math.min(50, Math.min(10, this.width))
        },
        mines() {
            this.mines = Math.min(200, Math.min(10, this.mines))
        }
    }
}
</script>

<style scoped>
@charset "UTF-8";

.modal-footer {
    min-height: 70px;
}

.modal-dialog {
    color: #444;
}

input {
    border-radius: 3px;
    padding-left: 8px;
    padding-right: 8px;
    text-align: right;
}
</style>
