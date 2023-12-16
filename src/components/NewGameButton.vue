<template>
    <div class="btn-group">
        <button id="newGameButton" type="button" class="btn btn-light p-1 px-3" @click="clicked(currentGameConfiguration)">
            <div v-html="smiley"></div>
        </button>
        <button type="button" class="btn btn-light dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown"
            aria-expanded="false">
            <span class="visually-hidden">Toggle Dropdown</span>
        </button>
        <ul class="dropdown-menu">
            <li>
                <button class="dropdown-item" type="button" @click="clicked(GameConfigurations.Beginner)">
                    <font-awesome-icon icon="fa-regular fa-star" />
                    BEGINNER
                </button>
            </li>
            <li>
                <button class="dropdown-item" type="button" @click="clicked(GameConfigurations.Intermediate)">
                    <font-awesome-icon icon="fa-regular fa-star-half-stroke" />
                    INTERMEDIATE
                </button>
            </li>
            <li>
                <button class="dropdown-item" type="button" @click="clicked(GameConfigurations.Expert)">
                    <font-awesome-icon icon="fa-solid fa-star" />
                    EXPERT
                </button>
            </li>
            <li>
                <hr class="dropdown-divider">
            </li>
            <li>
                <button class="dropdown-item" type="button" data-bs-toggle="modal" data-bs-target="#customBoardModal">CUSTOM
                </button>
            </li>
        </ul>
    </div>
    <div class="modal" id="customBoardModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
        <CustomBoardModal @start="clicked"></CustomBoardModal>
    </div>
</template>

<script lang="ts">
import type { BoardProperties } from '@/constants/BoardProperties';
import { GameConfigurations } from '@/constants/GameConfiguration';
import Pannel from './Pannel.vue';
import CustomBoardModal from './CustomBoardModal.vue';
import { useMinesweeperStore } from '@/store/store';

export default {
    name: 'Dashboard',
    components: { Pannel, CustomBoardModal },
    emits: {
        // newGameButtonClick: (configuration: { board: BoardProperties }) => true,
    },
    setup() {
        const minesweeperStore = useMinesweeperStore()
        return {
            minesweeperStore, GameConfigurations
        }
    },
    props: {
        mouseDown: {
            type: Boolean,
            required: true,
        }
    },
    computed: {
        smiley() {
            // https://www.w3schools.com/charsets/ref_emoji_smileys.asp
            if (this.minesweeperStore.gameOver) {
                if (this.minesweeperStore.victory) {
                    return "&#128526;" //SMILING FACE WITH SUNGLASSES
                } else {
                    return "&#128565;" //DIZZY FACE
                }
            } else {
                if (this.mouseDown) {
                    return "&#128535;" //KISSING FACE
                } else {
                    return "&#128566;" //FACE WITHOUT MOUTH
                }
            }
        }
    },
    data() {
        return {
            currentGameConfiguration: GameConfigurations.Intermediate
        }
    },
    mounted() {
        this.clicked(this.currentGameConfiguration)
        document.onkeyup = (key: KeyboardEvent) => {
            switch (key.code) {
                case 'KeyR':
                case 'F2': {
                    this.clicked(this.currentGameConfiguration)
                    break
                }
                case 'Digit1': {
                    this.clicked(GameConfigurations.Beginner)
                    break
                }
                case 'Digit2': {
                    this.clicked(GameConfigurations.Intermediate)
                    break
                }
                case 'Digit3': {
                    this.clicked(GameConfigurations.Expert)
                    break
                }
            }
        };
    },
    methods: {
        clicked(board: BoardProperties) {
            this.currentGameConfiguration = board
            this.minesweeperStore.createNewBoard(this.currentGameConfiguration)
        }
    }
}
</script>

<style scoped>
@charset "UTF-8";

#newGameButton {
    font-size: x-large;
}

button {
    color: #444;
}

.modal {
    color: #444;
}
</style>
