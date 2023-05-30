<template>
    <v-item-group mandatory>
        <v-item v-slot="{ isSelected, toggle }">
            <div
                :class="[
          'd-flex',
          'align-center',
          'flex-column',
          isSelected ? 'primary' : 'indigo'
        ]"
                @click="toggle"
                style="height: 500px; width: 500px; cursor: pointer; padding: 1rem; background-color: #1976D2;"
            >
                <img
                    height="200"
                    :src="getImageUrl(img_filename)"
                    cover
                    class="text-white"
                />
                <div class="text-h3 flex-grow-1 text-center">
                    {{ title }}
                </div>
                <div class="text-h5 flex-grow-1 text-center">
                    {{ truncateDescription(description, 20) }}
                </div>
                <div class="text-h4 flex-grow-1 text-center">
                    {{ formattedPrice }}
                </div>
            </div>
        </v-item>
    </v-item-group>
</template>


<script>
export default {
    props: {
        title: String,
        img_filename: String,
        price: String,
        description: String
    },
    methods: {
        getImageUrl(filename) {
            const baseUrl = process.env.PRODUCT_IMAGES_URL;
            return `${baseUrl}${filename}`;
        },
        truncateDescription(text, length) {
            if (text && text.length > length) {
                return text.slice(0, length) + '...';
            }
            return text;
        }
    },
    computed: {
        formattedPrice() {
            return this.price + ' €';
        }
    }
};
</script>
