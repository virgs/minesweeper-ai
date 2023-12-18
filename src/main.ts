import 'bootswatch/dist/lumen/bootstrap.min.css'
import './assets/main.css'

import { library } from '@fortawesome/fontawesome-svg-core'
import { faStar as faRegularStar, faStarHalfStroke } from '@fortawesome/free-regular-svg-icons'
import {
    faArrowsLeftRight,
    faArrowsUpDown,
    faBomb,
    faBullseye,
    faDice,
    faFlag,
    faForward,
    faForwardStep,
    faHourglass,
    faLandMineOn,
    faPercent,
    faRobot,
    faStar as faSolidStar,
    faWandSparkles,
    faXmark,
} from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { createPinia } from 'pinia'
import { createApp } from 'vue'
import App from './App.vue'
import { GameConfigurations } from './constants/GameConfiguration'
import { ReportGenerator } from './solver/ReportGenerator'

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

const generateReports = async (preffix: string) => {
    await new ReportGenerator(GameConfigurations.Beginner, {
        numberOfGames: 2000,
        workers: 20,
        filename: preffix + '-beginner',
    }).run()
    await new ReportGenerator(GameConfigurations.Intermediate, {
        numberOfGames: 2000,
        workers: 20,
        filename: preffix + '-intermediate',
    }).run()
    await new ReportGenerator(GameConfigurations.Expert, {
        numberOfGames: 2000,
        workers: 20,
        filename: preffix + '-expert',
    }).run()
}

// generateReports('main-proposition-less-relevant-arithmetic-avg')