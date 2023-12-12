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
import { ReportGenerator } from './solver/ReportGenerator'

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

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')

// await new ReportGenerator(GameConfigurations.Intermediate).run()
