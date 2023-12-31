<template>
    <div
        class="collapse-button mb-1"
        data-bs-toggle="collapse"
        data-bs-target="#aiControlCollapse"
        aria-expanded="false"
        aria-controls="aiControlCollapse"
    >
        <font-awesome-icon class="collapse-icon" icon="fa-solid fa-robot" />
        <div class="divider"></div>
    </div>
    <div class="collapse show" id="aiControlCollapse">
        <div class="card card-body mx-auto p-0 pt-1" style="background-color: transparent; border: none">
            <div class="btn-group text" role="group" aria-label="AI options">
                <button
                    :disabled="!minesweeperStore.gameIsRunning"
                    @click="aiAction(AiAction.HINT)"
                    type="button"
                    data-bs-toggle="tooltip"
                    data-bs-title="Show hints"
                    class="btn btn-info"
                >
                    <font-awesome-icon icon="fa-solid fa-wand-sparkles" />
                </button>
                <button
                    :disabled="!minesweeperStore.gameIsRunning"
                    @click="aiAction(AiAction.FORWARD_STEP)"
                    type="button"
                    data-bs-toggle="tooltip"
                    data-bs-title="Play all currently known safe moves"
                    class="btn btn-info"
                >
                    <font-awesome-icon icon="fa-solid fa-forward-step" />
                </button>
                <button
                    :disabled="!minesweeperStore.gameIsRunning"
                    @click="aiAction(AiAction.PLAY)"
                    type="button"
                    data-bs-toggle="tooltip"
                    data-bs-title="Play while there are safe moves"
                    class="btn btn-info"
                >
                    <font-awesome-icon icon="fa-solid fa-forward" />
                </button>
                <button
                    @click="aiAction(AiAction.GUESS)"
                    type="button"
                    class="btn btn-danger"
                    data-bs-toggle="tooltip"
                    data-bs-title="Make guess"
                    data-bs-delay="200"
                >
                    <font-awesome-icon icon="fa-solid fa-dice" />
                </button>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import { AiAction } from '@/constants/AiAction'
import { useMinesweeperStore } from '@/store/store'

export default {
    name: 'AiControlPannel',
    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            AiAction,
            minesweeperStore,
        }
    },
    props: {
        gameIsRunning: {
            type: Boolean,
            required: false,
        },
    },
    data() {
        return {}
    },
    mounted() {
        const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
        const tooltipList = [...tooltipTriggerList].map(
            (tooltipTriggerEl) =>
                //@ts-ignore
                new bootstrap.Tooltip(tooltipTriggerEl, {
                    trigger: 'hover',
                })
        )
    },
    methods: {
        async aiAction(aiAction: AiAction) {
            await this.minesweeperStore.aiAction(aiAction)
        },
    },
}
</script>

<style scoped>
.divider {
    border-bottom: 1px solid #aaa;
    height: 15px;
    min-width: calc(100% - 30px);
    float: right;
}

.collapse-icon {
    color: #444;
    width: 20px;
    transition: all ease 200ms;
}

.collapse-button {
    cursor: pointer;
}

.collapse-button:hover > .collapse-icon {
    transform: scale(1.25);
    filter: brightness(1.1);
}

.card-body {
    max-width: 450px;
}
</style>
