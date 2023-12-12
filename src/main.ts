import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'

/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* import specific icons */
import { faBomb, faFlag, faXmark } from '@fortawesome/free-solid-svg-icons'
import { faFaceSmile, faFaceSmileWink } from '@fortawesome/free-regular-svg-icons'

// <font-awesome-icon :icon="['fas', 'dice']" />

/* add icons to the library */
library.add(faBomb, faFlag, faXmark, faFaceSmile, faFaceSmileWink)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

// await new ReportGenerator(GameConfigurations.Expert,
//     {
//         numberOfGames: 5000,
//         workers: 20,
//         filename: 'Expert'
//     }).run()
