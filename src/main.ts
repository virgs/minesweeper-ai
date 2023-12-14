import "bootswatch/dist/lumen/bootstrap.min.css";
import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'


import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { faArrowsLeftRight, faArrowsUpDown, faBomb, faDice, faFlag, faLandMineOn, faPlay, faRobot, faWandSparkles, faXmark } from '@fortawesome/free-solid-svg-icons'
import { ReportGenerator } from "./solver/ReportGenerator";
import { GameConfigurations } from "./constants/GameConfiguration";

/* add icons to the library */
library.add(faBomb, faFlag, faXmark, faDice, faWandSparkles, faPlay, faRobot, faLandMineOn, faArrowsLeftRight, faArrowsUpDown)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

// new ReportGenerator(GameConfigurations.Intermediate,
//     {
//         numberOfGames: 1000,
//         workers: 20,
//         filename: 'Intermediate'
//     }).run()
