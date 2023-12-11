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

const board = new Board(GameConfigurations.Intermediate)
const solver = new Solver(board)
// solver.runTests()

const initializationClick = await solver.makeGuess()

board.initializeMinesAroundCell(board.getCellById(initializationClick.id)!)

while (!board.isGameFinished()) {
    await solver.update()
    const cellsToReveal = solver.knownSafeCellsIds
        .filter(cell => board.cells[cell].isNotRevealed())
    if (cellsToReveal.length > 0) {
        cellsToReveal
            .forEach(cell => board.revealCell(board.getCellById(cell)!))
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

console.log('guesses', solver.guesses)
console.log('won?', board.isGameWon(), 'lost?', board.isGameLost())

