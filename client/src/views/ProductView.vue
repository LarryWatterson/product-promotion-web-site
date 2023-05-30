<template>
    <v-main style="background-color: deepskyblue" v-if="isLoad">
        <v-container>
            <v-row>
                <v-col cols="12" class="d-flex justify-end mb-4">
                    <v-btn>
                        <v-menu activator="parent">
                            <v-list>
                                <v-list-item
                                    v-for="(item, index) in sortOptions"
                                    :key="index"
                                    :value="index"
                                    @click="sortProducts(item.value)"
                                >
                                    <v-list-item-title>
                                        {{ item.label }}
                                    </v-list-item-title>
                                </v-list-item>
                            </v-list>
                        </v-menu>
                        Sort by: {{ sortType }}
                    </v-btn>
                </v-col>
            </v-row>
            <v-row>
                <v-col v-for="product in productData" :key="product" cols="12" md="3">
                    <ProductPromotion
                            :products="[1, 2, 3]"
                            :height="'250px'"
                            :title="product.title"
                            :img_filename="product.img_filename"
                            :price="product.price"
                            :description="product.description"
                    />
                </v-col>
            </v-row>
        </v-container>
    </v-main>
</template>

<script>
import ProductPromotion from "../components/Production/ProductPromotion.vue";
export default {
    components: { ProductPromotion },
    data() {
        return {
            productData: null,
            isLoad: false,
            sortType: "Recently Added",
            sortOptions: [
                { label: "Recently Added", value: "dateAsc" },
                { label: "Price: High to Low", value: "priceDesc" },
                { label: "Price: Low t  o High", value: "priceAsc" },
            ],
        };
    },
    methods: {
        async updateLatestProducts() {
            await this.$http
                .get('/products')
                .then(response => {
                    this.productData = response.data;
                    this.sortProducts('dateAsc')
                    this.isLoad = true;
                })
                .catch(err => {
                    console.log(err);
                });
        },
        sortProducts(option) {
            switch (option) {
                case "dateAsc":
                    this.productData.sort((a, b) => new Date(a.date) - new Date(b.date));
                    break;
                case "priceDesc":
                    this.productData.sort((a, b) => b.price - a.price);
                    break;
                case "priceAsc":
                    this.productData.sort((a, b) => a.price - b.price);
                    break;
                default:
                    break;
            }
            const label = this.sortOptions.find(elm => elm.value === option)
            this.sortType = label ? label.label : ""
        }
    },
    mounted() {
        this.updateLatestProducts();
    }
};
</script>

<style>
.bg {
    background-color: white;
}
</style>
