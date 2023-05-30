<template>
    <div class="d-flex align-center justify-center" style="height: 75vh">
        <v-sheet width="500" class="mx-auto">
            <v-card
                class="mx-auto pa-16 pb-8"
                elevation="8"
                max-width="500"
                rounded="lg"
                color="white"
            >
                <div class="text-subtitle-1 text-medium-emphasis">Account</div>

                <v-text-field
                    density="compact"
                    placeholder="Username"
                    prepend-inner-icon="mdi-email-outline"
                    variant="outlined"
                    v-model="username"
                    @keyup.enter="sendLogin"
                ></v-text-field>

                <div class="text-subtitle-1 text-medium-emphasis d-flex align-center justify-space-between">
                    Password

                    <v-tooltip text="Please contact with me on discord." location="top">
                        <template v-slot:activator="{ props }">
                            <v-text v-bind="props">Forgot login password?</v-text>
                        </template>
                    </v-tooltip>
                </div>

                <v-text-field
                    :append-inner-icon="visible ? 'mdi-eye-off' : 'mdi-eye'"
                    :type="visible ? 'text' : 'password'"
                    density="compact"
                    placeholder="Enter your password"
                    prepend-inner-icon="mdi-lock-outline"
                    variant="outlined"
                    v-model="password"
                    @click:append-inner="visible = !visible"
                    @keyup.enter="sendLogin"
                ></v-text-field>

                <v-alert
                    v-if="error"
                    type="error"
                    dismissible
                    border="left"
                    colored-border
                    elevation="2"
                    icon="mdi-alert-circle-outline"
                    class="my-4"
                >
                    {{ error }}
                </v-alert>

                <v-btn
                    block
                    class="mb-8"
                    color="blue"
                    size="large"
                    variant="tonal"
                    @click="sendLogin"
                >
                    Log In
                </v-btn>
            </v-card>
        </v-sheet>
    </div>
</template>

<script>
export default {
    data: () => ({
        username: '',
        password: '',
        visible: false,
        error: null,
    }),
    methods: {
        sendLogin() {
            if (!this.username) {
                this.error = 'Please enter your username';
                return;
            }
            if (!this.password) {
                this.error = 'Please enter your password';
                return;
            }
            this.visible = true
            this.$http.post('/login', {
                username: this.username,
                password: this.password,
            })
                .then(response => {
                    const data = response.data
                    this.$store.commit('setToken', data.token)
                    this.$store.commit('setID', data.id)
                    this.$router.push('/')

                })
                .catch(err => {
                    this.error = err.response.data.message
                    this.visible = false
                })
        },
    },
};
</script>
