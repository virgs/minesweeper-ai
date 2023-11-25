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

/* add icons to the library */
library.add(faBrain, faRobot, faBolt, faPlay, faStop, faHourglass)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

const beginner = { height: 9, width: 9, mines: 10 }
const intermediate = { height: 16, width: 16, mines: 40 }
const expert = { height: 16, width: 30, mines: 99 }

const board = new Board(25, beginner)
board.print(true)
console.log('lost', board.isGameLost())
board.printMines()
console.log('won', board.isGameWon())
