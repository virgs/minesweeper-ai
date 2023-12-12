import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'

/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* import specific icons */
import { faBomb, faFlag, faXmark } from '@fortawesome/free-solid-svg-icons'
import { GameConfigurations } from './constants/GameConfiguration'
import { Board } from './engine/Board'
import { Solver } from './solver/Solver'
import { Cell } from './engine/Cell'
import type { BoardProperties } from './constants/BoardProperties'

// <font-awesome - icon icon = "fa-solid fa-sun" />
// <font-awesome - icon icon = "fa-regular fa-sun" />
// <font-awesome-icon :icon="['fat', 'burst']" beat-fade style="color: #22511f;" />

// <font-awesome - icon : icon = "['far', 'face-smile']" />
// <font-awesome - icon : icon = "['far', 'face-smile-wink']" />
// <font-awesome-icon :icon="['far', 'face-laugh']" />
// <font-awesome-icon :icon="['far', 'face-dizzy']" />

// <font-awesome-icon :icon="['fas', 'dice']" />

/* add icons to the library */
library.add(faBomb, faFlag, faXmark)

// const app = createApp(App)
// app.component('font-awesome-icon', FontAwesomeIcon)
// app.mount('#app')

async function playAGame(configuration: BoardProperties) {
    const board = new Board(configuration)
    const solver = new Solver(board)

    const initializationClick = await solver.makeGuess()

    board.initializeMinesAroundCell(board.getCellById(initializationClick.id)!)

    while (!board.isGameFinished()) {
        await solver.update()
        const cellsToReveal = solver.knownSafeCellsIds.filter((cell) => board.cells[cell].isNotRevealed())
        if (cellsToReveal.length > 0) {
            cellsToReveal.forEach((cell) => board.revealCell(board.getCellById(cell)!))
        } else {
            if (board.isGameLost() || board.isGameWon()) {
                console.log('game over')
                break
            }
            const guess = await solver.makeGuess()
            board.revealCell(board.getCellById(guess.id)!)
            // break
        }
    }
    solver.terminate()
    console.log('won?', board.isGameWon(), 'lost?', board.isGameLost(), 'guesses', solver.guesses)
    // console.log('mines', solver.knownMineCellsIds)
    // console.log('safes', solver.knownSafeCellsIds)
}

let gamesNum = 1;

(async function run() {
    for (let i = 0; i < gamesNum; ++i) {
        playAGame(GameConfigurations.Intermediate)
    }
})()
