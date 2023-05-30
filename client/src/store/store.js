import { createStore } from 'vuex'
import jwt_decode from 'jwt-decode'

const store = createStore({
    state() {
        return {
            isLoggedIn: !!localStorage.getItem('token'),
            userID: localStorage.getItem('userID')
        }
    },
    mutations: {
        setToken(state, token) {
            localStorage.setItem('token', token)
            state.isLoggedIn = true
        },
        clearToken(state) {
            localStorage.removeItem('token')
            state.isLoggedIn = false
        },
        setID(state, id) {
            localStorage.setItem('userID', id)
            state.userID = id
        },
        clearID(state) {
            localStorage.removeItem('userID')
            state.userID = null
        }
    },
    actions: {
        checkToken({ commit }) {
            const token = localStorage.getItem('token')
            if (token) {
                const decodedToken = jwt_decode(token)
                const expirationDate = new Date(decodedToken.exp * 1000)
                if (expirationDate <= new Date()) {
                    commit('clearToken')
                    commit('clearID')
                }
            }
        }
    },
    getters: {
        getIsLoggedIn: state => state.isLoggedIn,
        getUserID: state => state.userID
    }
})

export const Store   = store
