<template>
    <div class="collapse-button" data-bs-toggle="collapse" data-bs-target="#aiControlCollapse" aria-expanded="false"
        aria-controls="aiControlCollapse">
        <font-awesome-icon class="collapse-icon" icon="fa-solid fa-robot" />
        <div class="divider"></div>
    </div>
    <div class="collapse" id="aiControlCollapse">
        <div class="card card-body p-0 pt-1" style="background-color: transparent; border: none;">
            <div class="btn-group text" role="group" aria-label="AI options">
                <button :disabled="!gameIsRunning" @click="$emit('aiAction', AiAction.HINT)" type="button"
                    class="btn btn-info">
                    <font-awesome-icon icon="fa-solid fa-wand-sparkles" />
                </button>
                <button :disabled="!gameIsRunning" @click="$emit('aiAction', AiAction.PLAY)" type="button"
                    class="btn btn-success">
                    <!-- Play safe -->
                    <font-awesome-icon icon="fa-solid fa-play" />
                </button>
                <button :disabled="!gameIsRunning" @click="$emit('aiAction', AiAction.GUESS)" type="button"
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


export default {
    name: 'AiControlPannel',
    setup() {
        return {
            AiAction
        }
    },
    props: {
        gameIsRunning: {
            type: Boolean,
            required: false,
        }
    },
    emits: {
        aiAction: (aiAction: AiAction) => true,
    },
    data() {
        return {
        }
    }
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
</style>
