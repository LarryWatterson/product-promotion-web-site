<script>
import Parallax from "../components/Home/Parallax.vue";
import ProductPromotion from "../components/Production/ProductPromotion.vue";

export default {
    data() {
        return {
            selectedImage: null,
            productData: null,
            isLoad: false,
        };
    },
    components: {ProductPromotion, Parallax},
    methods: {
        async updateLatestProducts(){
            await this.$http.get('/products/latest')
                .then(response => {
                    this.productData = response.data
                    this.isLoad = true
                })
                .catch(err => {
                    console.log(err)
                })
        },
        handleImageUpload() {
            const formData = new FormData();
            formData.append('image', this.selectedImage);
            this.$http.post('/login/upload', formData)
                .then(response => {
                    console.log("response" + response.data)
                })
                .catch(err => {
                    console.log("error: " + err)
                })
        },
        uploadImage() {
            if (this.selectedImage) {
                this.handleImageUpload();
            } else {
                // not selected
            }
        },
        handleFileChange(event) {
            this.selectedImage = event.target.files[0];
        },
    },
    mounted() {
        this.updateLatestProducts()
    }
}
</script>

<template>
    <Parallax></Parallax>
    <v-main class="bg-blue-lighten-4">
        <v-card-title class="text-center">New Products</v-card-title>
        <v-container>
            <v-row>
                <v-col
                    v-for="elm in this.productData"
                    :key="elm"
                    cols="12"
                    md="3"
                >
                    <ProductPromotion

                        :key="elm.id"
                        :products="[1,2,3]"
                        :height="'250px'"
                        :title="elm.title"
                        :img_filename="elm.img_filename"
                        :price="elm.price"
                        :description="elm.description"
                    />
                </v-col>
            </v-row>
        </v-container>

    </v-main>

<!--    <div>-->
<!--        <input type="file" ref="fileInput" @change="handleFileChange" accept="image/*" />-->
<!--        <v-btn color="primary" @click="uploadImage">OK</v-btn>-->
<!--    </div>-->

</template>
