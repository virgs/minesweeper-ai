import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'

/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* import specific icons */
import { faBolt, faBrain, faHourglass, faPlay, faRobot, faStop } from '@fortawesome/free-solid-svg-icons'
import { Board } from './engine/Board'
import { MineSweeperSolver } from './engine/MineSweeperSolver'
import { Proposition } from './engine/Proposition'

// <font-awesome - icon icon = "fa-solid fa-sun" />
// <font-awesome - icon icon = "fa-regular fa-sun" />
// <font-awesome - icon icon = "fa-solid fa-bomb" />
// <font-awesome-icon icon="fa-solid fa-bomb" shake />
// <font-awesome-icon :icon="['fat', 'burst']" beat-fade style="color: #22511f;" />
// <font-awesome-icon icon="fa-solid fa-flag" />


/* add icons to the library */
library.add(faBrain, faRobot, faBolt, faPlay, faStop, faHourglass)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

const beginner = { height: 9, width: 9, mines: 10 }
const intermediate = { height: 16, width: 16, mines: 40 }
const expert = { height: 16, width: 30, mines: 99 }

const custom = { height: 10, width: 10, mines: 12 }

const board = new Board(beginner)


console.log('board created')

const ai = new MineSweeperSolver(board)
let click: number | undefined = ai.selectLowestChanceCell()
let openCells = board.initialize(click)
console.log('initialized ', click, openCells.sort((a, b) => a - b))
ai.updatePropositions(openCells)

while (!board.isGameWon() && !board.isGameLost()) {
    click = ai.selectUnreveilledSafeCell()
    if (!click) {
        console.log('no safe cell to open')
        click = ai.selectLowestChanceCell()
    }
    // console.log('selected ' + click)
    openCells = board.reveillCell(click)
    if (board.isGameLost()) {
        break;
    }
    ai.updatePropositions(openCells)
    if (ai.boardIsSolved()) {
        console.log('won')
        break
    }
}

board.print(true)
console.log('reveilled ' + board.getCells().length + ' / ' + board.getCells().filter(c => c.isReveilled()).length)
console.log('game lost ' + board.isGameLost())
console.log('isGameWon ' + board.isGameWon())