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

/* add icons to the library */
library.add(faBrain, faRobot, faBolt, faPlay, faStop, faHourglass)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

const beginner = { height: 9, width: 9, mines: 10 }
const intermediate = { height: 16, width: 16, mines: 40 }
const expert = { height: 16, width: 30, mines: 99 }

const custom = { height: 5, width: 5, mines: 5 }
const board = new Board(expert)

const ai = new MineSweeperSolver(board)
let click = ai.selectNextIndex()
let openCells = board.initialize(click)
ai.updatePropositions(openCells)

// board.print(true)
// board.printMines()

while (!board.isGameLost() && !board.isGameWon()) {
    click = ai.selectNextIndex()
    openCells = board.openCell(click)
    console.log('selected ' + click)
    ai.updatePropositions(openCells)

}

console.log('game lost ' + board.isGameLost())
console.log('isGameWon ' + board.isGameWon())
console.log('equal ' + new Proposition([0, 1, 2], 3).isEqual(new Proposition([1, 0, 2], 3)))