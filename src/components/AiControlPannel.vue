<template>
    <div class="collapse-button" data-bs-toggle="collapse" data-bs-target="#aiControlCollapse" aria-expanded="false"
        aria-controls="aiControlCollapse">
        <font-awesome-icon class="collapse-icon" icon="fa-solid fa-robot" />
        <div class="divider"></div>
    </div>
    <div class="collapse" id="aiControlCollapse">
        <div class="card card-body mx-auto p-0 pt-1" style="background-color: transparent; border: none;">
            <div class="btn-group text" role="group" aria-label="AI options">
                <button :disabled="!minesweeperStore.gameIsRunning" @click="aiAction(AiAction.HINT)" type="button"
                    class="btn btn-info">
                    <font-awesome-icon icon="fa-solid fa-wand-sparkles" />
                </button>
                <button :disabled="!minesweeperStore.gameIsRunning" @click="aiAction(AiAction.PLAY)" type="button"
                    class="btn btn-info">
                    <!-- Play safe -->
                    <font-awesome-icon icon="fa-solid fa-play" />
                </button>
                <button :disabled="!minesweeperStore.gameIsRunning" @click="aiAction(AiAction.GUESS)" type="button"
                    class="btn btn-danger">
                    <!-- Guess -->
                    <font-awesome-icon icon="fa-solid fa-dice" />
                </button>
            </div>
        </div>
    </div>
</template>

<script lang="ts">
import { AiAction } from '@/constants/AiAction';
import { useMinesweeperStore } from '@/store/store';

export default {
    name: 'AiControlPannel',
    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            AiAction, minesweeperStore
        }
    },
    props: {
        gameIsRunning: {
            type: Boolean,
            required: false,
        }
    },
    data() {
        return {
        }
    },
    methods: {
        async aiAction(aiAction: AiAction) {
            console.log('pannel', aiAction)
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

.collapse-button:hover>.collapse-icon {
    transform: scale(1.25);
    filter: brightness(1.1);
}

.card-body {
    max-width: 400px;
}
</style>
