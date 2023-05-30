<template>
    <v-card class="bg-light-blue-darken-4" >
        <v-row justify="center" no-gutters>
            <v-btn
                    v-for="elm in menus"
                    :key="elm.text"
                    color="white"
                    variant="text"
                    class="mx-2"
                    rounded="xl"
                    :to="elm.link"
            >
                {{ elm.text }}
            </v-btn>
            <v-col class="text-center mt-4" cols="12">
                {{ new Date().getFullYear() }} — <strong>Copyright</strong>
            </v-col>
        </v-row>
    </v-card>
</template>

<script>
export default {
    data: () => ({
        menus: [
            {text: "Home", link : "/"},
            {text: "Products", link : "/products"},
        ]
    }),
}
</script>

<style scoped>
v-footer {
    position: absolute;
    bottom: 0;
    width: 100%;
}
</style>