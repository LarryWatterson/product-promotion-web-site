<template>
    <Login v-if="!isAuthenticated"></Login>
    <v-spacer></v-spacer>
</template>

<script>
import Login from "../components/Global/Login.vue";
export default {
    components: {
        Login
    },
    computed: {
        isAuthenticated() {
            return this.$store.getters.getIsLogin
        }
    }
}
</script>