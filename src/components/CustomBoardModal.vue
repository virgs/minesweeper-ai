<template>
    <div class="modal-dialog modal-md modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="modalLabel">Custom board properties</h1>
            </div>
            <div class="modal-body">
                <div class="input-group my-3 has-validation">
                    <div class="row g-1">
                        <div class="col-3">
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

                        </div>
                        <div class="col-3">
                            <div class="form-floating">
                                <input type="number" class="form-control text" aria-label="heightInput" id="heightInput"
                                    v-model="height">
                                <label for="heightInput">
                                    <font-awesome-icon icon="fa-solid fa-arrows-up-down" />
                                    Height</label>
                                <div class="invalid-feedback">
                                    Please set a number between 10 and 100
                                </div>
                            </div>

                        </div>
                        <div class="col-3">
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
                        <div class="col-3">
                            <div class="form-floating">
                                <input type="number" class="form-control text" aria-label="minesDensity" id="minesDensity"
                                    v-model="density" readonly style="border: none; box-shadow: none;">
                                <label for="minesDensity">
                                    <font-awesome-icon icon="fa-solid fa-percent" />
                                    Density
                                </label>
                            </div>
                        </div>

                    </div>



                </div>
            </div>
            <div class="modal-footer py-2">
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal" :disabled="!validBoard"
                    @click="start">Start</button>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import type { BoardProperties } from '@/constants/BoardProperties';
import { GameConfigurations } from '@/constants/GameConfiguration';


export default {
    name: 'CustomBoardModal',
    // emits: {
    //     start: (board: BoardProperties) => true,
    // },
    setup() {
        return {
            GameConfigurations
        }
    },
    data() {
        const html = document.getElementsByTagName('body')[0]
        const htmlWidth = html.offsetWidth;
        const htmlHeight = html.offsetHeight;
        console.log('cell size: ' + getComputedStyle(document.documentElement)
            .getPropertyValue('--cell-size'));
        console.log('htmlWidth: ' + htmlWidth)
        console.log('htmlHeight: ' + htmlHeight)

        //mines density can't be higher than 90%
        return {
            height: 16,
            width: 16,
            mines: 40,
        }
    },
    watch: {
        height() {
            this.height = Math.min(50, Math.max(10, this.height))
        },
        width() {
            this.width = Math.min(50, Math.max(10, this.width))
        },
        mines() {
            this.mines = Math.min(200, Math.max(10, this.mines))
        }
    },
    computed: {
        density() {
            return this.mines / (this.width * this.height)
        },
        maxWidth() {

        },
        maxHeight() {

        },
        validBoard() {
            return true
        }
    },
    methods: {
        start() {
            this.$emit('start', ({ width: this.width, height: this.height, mines: this.mines }))
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
