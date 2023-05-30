import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import { Store } from '../store/store'
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView
    },
    {
      path: '/products',
      name: 'products',
      component: () => import('../views/ProductView.vue')
    },
    {
      path: '/login',
      name: 'login',
      component: () => import('../views/LoginView.vue')
    },
    {
      path: '/account-details',
      name: 'account-details',
      component: () => import('../views/AccountDetailsView.vue')
    },
    {
      path: '/logout',
      name: 'Logout',
      beforeEnter: (to, from, next) => {
        Store.commit('clearToken')
        Store.commit('clearID')
        next('/')
      }
    }
  ]
})


router.beforeEach((to, from, next) => {

  Store.dispatch('checkToken')
  const loggedIn = Store.getters.getIsLoggedIn
  const accountPages = ["accountdetails", "logout"]

  if (accountPages.includes(to.name) && !loggedIn) {
    next('/login')
  }
  else {
    next()
  }
})

export default router
