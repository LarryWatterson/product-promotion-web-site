    <script setup>
import Menu from "./components/Global/Menu.vue";
import Footer from "./components/Global/Footer.vue";
    </script>

    <template>
        <v-app>
            <Menu />
            <router-view></router-view>
            <Footer />
        </v-app>
    </template>
