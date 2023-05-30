
<template>
    <v-main style="background-color: whitesmoke">
        <v-container fluid fill-height v-if="isLoad">
            <v-row align="center" justify="center">
                <v-col cols="12" sm="8" md="6">
                    <div>
                        <h2>Account Details</h2>
                        <v-form>
                            <v-text-field
                                    label="Name"
                                    v-model="accountDetails.name"
                            ></v-text-field>

                            <v-text-field
                                    label="Surname"
                                    v-model="accountDetails.surname"
                            ></v-text-field>

                            <v-text-field
                                    label="E-Mail"
                                    v-model="accountDetails.email"
                            ></v-text-field>
                        </v-form>
                        <v-row align="center" justify="center">
                            <v-col class="text-center" cols="12">
                                <v-btn
                                        class="text-none mb-4"
                                        color="primary"
                                        size="x-large"
                                        variant="flat"
                                        @click="updateDetails"
                                >
                                    Update
                                </v-btn>
                            </v-col>
                        </v-row>

                        <v-dialog v-model="showDialog" max-width="500px">
                            <v-card>
                                <v-card-title class="headline">Info</v-card-title>
                                <v-card-text>
                                    {{ message }}
                                </v-card-text>
                                <v-card-actions>
                                    <v-btn color="primary"  @click="showDialog = false">Close</v-btn>
                                </v-card-actions>
                            </v-card>
                        </v-dialog>
                    </div>
                </v-col>
            </v-row>
        </v-container>
    </v-main>
</template>

<script>
export default {
    data() {
        return {
            accountDetails: {
                name: "",
                surname: "",
                email: ""
            },
            isLoad: false,
            message: null,
            showDialog: false
        }
    },
    methods: {
      async getDetails() {
          await this.$http
              .get('/account/details', {
                  params: {
                      id: this.$store.getters.getUserID
                  }
              })
              .then(response => {
                  this.accountDetails = response.data
                  this.isLoad = true
              })
              .catch(error => {
                  console.log(error)
              })
      },
       async updateDetails() {
              await this.$http.put('/account/updateDetails', {
                  id: this.$store.getters.getUserID,
                  name: this.accountDetails.name,
                  surname: this.accountDetails.surname,
                  email: this.accountDetails.email
              })
              .then(response => {
                  this.message = response.data.message
                  this.showDialog = true
              })
              .catch(err => {
                  console.log(err)
              })
        }
    },
    mounted() {
            this.getDetails()
    }
}
</script>