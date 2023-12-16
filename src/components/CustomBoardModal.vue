<template>
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="modalLabel">Custom board properties</h1>
            </div>
            <div class="modal-body">
                <div class="input-group my-3 has-validation">
                    <div class="row justify-content-between">
                        <div class="col">
                            <div class="form-floating">
                                <input
                                    type="number"
                                    :class="['form-control text', !validWidth ? 'is-invalid' : '']"
                                    aria-label="widthInput"
                                    id="widthInput"
                                    v-model="width"
                                />
                                <label for="widthInput">
                                    <font-awesome-icon icon="fa-solid fa-arrows-left-right" />
                                    Width
                                </label>
                                <div v-show="!validWidth" class="invalid-feedback">Must be between 5 and 30</div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating">
                                <input
                                    type="number"
                                    :class="['form-control text', !validHeight ? 'is-invalid' : '']"
                                    aria-label="heightInput"
                                    id="heightInput"
                                    v-model="height"
                                />
                                <label for="heightInput">
                                    <font-awesome-icon icon="fa-solid fa-arrows-up-down" />
                                    Height</label
                                >
                                <div v-show="!validHeight" class="invalid-feedback">Must be between 5 and 20</div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating">
                                <input
                                    type="number"
                                    :class="['form-control text', !validDensity ? 'is-invalid' : '']"
                                    aria-label="minesInput"
                                    id="minesInput"
                                    v-model="mines"
                                />
                                <label for="minesInput">
                                    <font-awesome-icon icon="fa-solid fa-land-mine-on" />
                                    Mines
                                </label>
                                <div v-show="!validDensity" class="invalid-feedback">
                                    Must keep density between 1% and 20%
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-floating my-1" style="text-align: right">
                                <legend class="m-0">
                                    <font-awesome-icon class="mx-2" icon="fa-solid fa-percent" />Mines density
                                </legend>
                                <div
                                    type="number"
                                    :class="[
                                        'text',
                                        validDensity ? 'var(--bs-form-valid-color);' : 'var(--bs-form-invalid-color);',
                                    ]"
                                    aria-label="minesDensity"
                                    id="minesDensity"
                                >
                                    {{ density.toString().padEnd(5, '.00') }} %
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer py-2">
                <button
                    type="button"
                    class="btn btn-primary"
                    data-bs-dismiss="modal"
                    :disabled="!validBoard"
                    @click="start"
                >
                    Start
                </button>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import { GameConfigurations } from '@/constants/GameConfiguration'

export default {
    name: 'CustomBoardModal',
    setup() {
        return {
            GameConfigurations,
        }
    },
    data() {
        return {
            height: 16,
            width: 16,
            mines: 40,
        }
    },
    computed: {
        density() {
            return Math.trunc((10000 * this.mines) / (this.width * this.height)) / 100
        },
        validWidth() {
            return this.width >= 5 && this.width <= 30
        },
        validHeight() {
            return this.height >= 5 && this.height <= 20
        },
        validDensity() {
            return this.density >= 1 && this.density <= 25
        },
        validBoard() {
            return this.validHeight && this.validWidth && this.validDensity
        },
    },
    methods: {
        start() {
            this.$emit('start', { width: this.width, height: this.height, mines: this.mines })
        },
    },
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
