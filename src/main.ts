import "bootswatch/dist/lumen/bootstrap.min.css";
import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'


import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { faBomb, faFlag, faXmark } from '@fortawesome/free-solid-svg-icons'

// <font-awesome-icon :icon="['fas', 'dice']" />

/* add icons to the library */
library.add(faBomb, faFlag, faXmark)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

// await new ReportGenerator(GameConfigurations.Expert,
//     {
//         numberOfGames: 5000,
//         workers: 20,
//         filename: 'Expert'
//     }).run()
