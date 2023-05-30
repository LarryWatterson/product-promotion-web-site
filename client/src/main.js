import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import axios from "./plugin/axios";
import { Store } from './store/store'
import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'

const vuetify = createVuetify({
    components,
    directives,
})

const app = createApp(App)

app.config.globalProperties.$http = axios;

app.use(router)
app.use(vuetify);
app.use(Store)
app.mount('#app')