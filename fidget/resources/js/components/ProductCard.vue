<template>
    <article class="ff-product-card h-100 d-flex flex-column">
        <div class="ff-product-card__image">
            <img
                class="ff-product-card__img"
                :src="product.image"
                :alt="product.name"
                loading="lazy"
            />
        </div>

        <div class="ff-product-card__body p-3 d-flex flex-column flex-grow-1">
            <header class="mb-2 text-center">
                <h3 class="h5 ff-card-title mb-1">{{ product.name }}</h3>
                <div class="d-flex align-items-center justify-content-center gap-2 mt-1">
                    <StarRating :rating="product.rating" />
                    <span v-if="product.price" class="fw-bold">{{ product.price }}</span>
                </div>
            </header>

            <p v-if="product.short" class="ff-muted mb-3 text-center">
                {{ product.short }}
            </p>

            <div class="mt-auto">
                <a
                    class="btn ff-btn-cta w-100"
                    :href="product.etsyUrl || etsyUrl"
                    target="_blank"
                    rel="noopener"
                >
                    <i class="bi bi-cart3 me-2"></i>
                    Add to Etsy Cart
                </a>
            </div>
        </div>
    </article>
</template>

<script setup>
import StarRating from './StarRating.vue';

defineProps({
    product: { type: Object, required: true },
    etsyUrl: { type: String, default: 'https://www.etsy.com/' },
});
</script>

<style scoped>
.ff-product-card__image {
    width: 100%;
    aspect-ratio: 1 / 1;     /* change to 4 / 3, 3 / 2, etc. if you prefer */
    overflow: hidden;
    display: block;
}

.ff-product-card__img {
    width: 100%;
    height: 100%;
    display: block;
    object-fit: cover;       /* use 'contain' if you never want cropping */
    object-position: center;
}
</style>
