import 'bootswatch/dist/lumen/bootstrap.min.css'
import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import { createPinia } from 'pinia'
import { library } from '@fortawesome/fontawesome-svg-core'
import {
    faArrowsLeftRight,
    faArrowsUpDown,
    faBomb,
    faDice,
    faFlag,
    faHourglass,
    faLandMineOn,
    faPercent,
    faPlay,
    faRobot,
    faWandSparkles,
    faXmark,
    faStar as faSolidStar,
    faBullseye,
    faForwardStep,
    faForward,
} from '@fortawesome/free-solid-svg-icons'
import { faStar as faRegularStar, faStarHalfStroke } from '@fortawesome/free-regular-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

//solid
library.add(
    faBomb,
    faFlag,
    faXmark,
    faDice,
    faWandSparkles,
    faForward,
    faRobot,
    faLandMineOn,
    faArrowsLeftRight,
    faArrowsUpDown,
    faPercent,
    faHourglass,
    faRobot,
    faSolidStar,
    faBullseye,
    faForwardStep
)
library.add(faRegularStar, faStarHalfStroke)

const app = createApp(App)
const pinia = createPinia()
app.use(pinia)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

// new ReportGenerator(GameConfigurations.Intermediate,
//     {
//         numberOfGames: 1000,
//         workers: 20,
//         filename: 'Intermediate'
//     }).run()
