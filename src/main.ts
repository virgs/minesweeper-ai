import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'

/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* import specific icons */
import { faBomb, faFlag } from '@fortawesome/free-solid-svg-icons'

// <font-awesome - icon icon = "fa-solid fa-sun" />
// <font-awesome - icon icon = "fa-regular fa-sun" />
// <font-awesome-icon icon="fa-solid fa-bomb" shake />
// <font-awesome-icon :icon="['fat', 'burst']" beat-fade style="color: #22511f;" />

/* add icons to the library */
library.add(faBomb, faFlag)

const app = createApp(App)
app.component('font-awesome-icon', FontAwesomeIcon)
app.mount('#app')