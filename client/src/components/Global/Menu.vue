<template>
    <v-app-bar color="#333333" app absolute>
        <v-toolbar-items>
            <v-btn text to="/" color="white">Home</v-btn>
            <v-btn text to="/products" color="white">Products</v-btn>
<!--            <v-btn color="white">Contact</v-btn>-->
        </v-toolbar-items>
        <v-spacer />
        <v-icon color="white">mdi-ghost</v-icon>
        <v-spacer />
        <v-toolbar-items>

            <v-btn icon color="white" v-if="isLogin()">
                <v-icon>mdi-account-circle</v-icon>
                <v-menu activator="parent">
                    <v-list>
                        <v-list-item
                            v-for="(item, index) in accountMenus"
                            :key="index"
                            :value="index"
                            :to="item.link"
                        >
                            <v-list-item-title>
                                <v-icon>{{ item.icon }}</v-icon>
                                {{ item.title }}
                            </v-list-item-title>
                        </v-list-item>
                    </v-list>
                </v-menu>
            </v-btn>
            <v-btn  icon color="white" v-else to="/login">
                <v-icon>mdi-account-circle</v-icon>
            </v-btn>
            <v-btn icon color="white">
                <v-icon>mdi-cart</v-icon>
            </v-btn>
        </v-toolbar-items>
    </v-app-bar>
</template>

<script>
export default {
    data: () => ({
        accountMenus: [
            { link: '/account-details', icon: "mdi-account-details", title: 'Account Details' },
            { link: '/logout', icon: "mdi-logout",title: 'Logout' },
        ],
    }),
    methods: {
        isLogin() {
            return this.$store.getters.getIsLoggedIn
        }
    }
}
</script>