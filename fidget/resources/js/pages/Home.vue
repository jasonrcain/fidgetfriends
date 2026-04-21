<template>
  <FfHero
    variant="ribbon"
    title="Awesome 3D Printed Fidgets!"
    subtitle="Colorful, fun, and stress‑relieving fidgets for kids and adults."
  >
    <template #actions>
      <a class="ff-btn-cta btn" :href="etsyUrl" target="_blank" rel="noopener">
        Shop on Etsy
      </a>
      <router-link class="btn btn-light fw-bold" to="/shop">
        Browse here
      </router-link>
    </template>
  </FfHero>

  <section class="pb-4 pb-md-5">
    <div class="container">
      <div class="text-center mb-4">
        <CloudTitle title="Popular Fidgets!" size="lg" />
        <p class="ff-muted mt-3 mb-0">A few favorites to get you started.</p>
      </div>

      <div class="row g-4">
        <div class="col-12 col-md-4" v-for="p in popular" :key="p.id">
          <ProductCard :product="p" :etsy-url="etsyUrl" />
        </div>
      </div>
    </div>
  </section>

  <section class="pb-4 pb-md-5">
    <div class="container">
      <div class="text-center mb-4">
        <CloudTitle title="Fun &amp; Fidgety!" size="lg" />
        <p class="ff-muted mt-3 mb-0">Designed to make hands happy.</p>
      </div>

      <div class="row g-4">
        <div class="col-12 col-md-4">
          <FeatureCard
            icon="✨"
            title="Cool Designs!"
            text="Bright colors and playful shapes that pop."
          />
        </div>
        <div class="col-12 col-md-4">
          <FeatureCard
            icon="😌"
            title="Stress Relief!"
            text="Great for focus breaks and calming fidgets."
          />
        </div>
        <div class="col-12 col-md-4">
          <FeatureCard
            icon="🚀"
            title="Endless Fun!"
            text="Spin, click, slide — repeat whenever you want."
          />
        </div>
      </div>
    </div>
  </section>

  <section class="pb-5">
    <div class="container">
      <div class="ff-cloud-panel p-4 p-md-5 text-center">
        <div class="d-flex justify-content-center">
          <WoodSign title="Visit Our Etsy Shop!" size="lg" />
        </div>

        <p class="ff-muted mb-4 mt-3" style="max-width: 60ch; margin-inline: auto;">
          Browse our latest 3D printed fidgets, new drops, and colorful variations.
        </p>

        <a class="btn ff-btn-cta" :href="etsyUrl" target="_blank" rel="noopener">
          Browse Now
        </a>

        <div class="mt-4 small ff-muted">
          3D Printed Toys for All Ages!
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import FfHero from '../components/FfHero.vue';
import ProductCard from '../components/ProductCard.vue';
import FeatureCard from '../components/FeatureCard.vue';
import CloudTitle from '../components/CloudTitle.vue';
import WoodSign from '../components/WoodSign.vue';
import { PRODUCTS } from '../data/products';

const etsyUrl = import.meta.env.VITE_ETSY_URL || 'https://www.etsy.com/';

// Mirror the homepage "Popular Fidgets" row in your mockups.
const popular = PRODUCTS.slice(0, 3);
</script>
