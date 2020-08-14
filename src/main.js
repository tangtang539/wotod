import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Header from './components/Header'
import Footer from './components/Footer'

axios.defaults.baseURL="http://127.0.0.1:3000"
Vue.prototype.axios=axios
Vue.component('my-header',Header)
Vue.component('my-footer',Footer)
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
