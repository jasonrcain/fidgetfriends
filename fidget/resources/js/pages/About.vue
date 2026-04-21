<template>
  <FfHero
    variant="wood"
    title="About Us!"
    subtitle="Learn about our awesome 3D printed fidgets."
  >
    <template #actions>
      <router-link class="btn ff-btn-cta" to="/shop">Browse Fidgets</router-link>
    </template>
  </FfHero>

  <section class="pb-4 pb-md-5">
    <div class="container">
      <div class="row g-4 align-items-center">
        <div class="col-12 col-lg-7">
          <div class="ff-cloud-panel p-4 p-md-5">
            <div class="d-flex justify-content-center justify-content-lg-start mb-3">
              <WoodSign title="Fun Fidgets for Everyone!" />
            </div>

            <p class="ff-muted mb-0">
              At Fidget Friendz, we love creativity and fidget toys. We create colorful, fun,
              and stress‑relieving 3D printed fidgets that are perfect for kids and adults alike.
              Each fidget is designed with care and printed in vibrant colors for a satisfying experience.
            </p>
          </div>
        </div>

        <div class="col-12 col-lg-5">
          <div class="ff-card">
            <img :src="printingImgUrl" alt="3D printing fidget toys" />
          </div>
          <p class="small ff-muted mt-2 mb-0">
            Replace this image with a real photo of your printer / workspace.
          </p>
        </div>
      </div>
    </div>
  </section>

  <section class="pb-4 pb-md-5">
    <div class="container">
      <div class="text-center mb-4">
        <CloudTitle title="Our Story &amp; Mission" size="lg" />
        <p class="ff-muted mt-3 mb-0">Why we make what we make.</p>
      </div>

      <div class="row g-4">
        <div class="col-12 col-md-4">
          <FeatureCard icon="🖨️" title="High Quality 3D Prints" text="Printed for smooth movement and durability." />
        </div>
        <div class="col-12 col-md-4">
          <FeatureCard icon="🎨" title="Super Cool Designs" text="Unique shapes, colorways, and fun themes." />
        </div>
        <div class="col-12 col-md-4">
          <FeatureCard icon="🧘" title="Stress & Anxiety Relief" text="A satisfying way to relax and refocus." />
        </div>
      </div>
    </div>
  </section>

  <section class="pb-5">
    <div class="container">
      <div class="ff-cloud-panel p-4 p-md-5 text-center">
        <div class="d-flex justify-content-center">
          <WoodSign title="Shop Our Fidgets on Etsy!" size="lg" />
        </div>

        <p class="ff-muted mb-4 mt-3" style="max-width: 65ch; margin-inline: auto;">
          Fidget Friendz was founded from our love of fidget toys and 3D printing. We wanted to share that
          joy by creating unique, fun, and satisfying toys — bringing creativity and a sense of wonder to all ages.
        </p>

        <a class="btn ff-btn-cta" :href="etsyUrl" target="_blank" rel="noopener">
          Visit Shop
        </a>
      </div>
    </div>
  </section>
</template>

<script setup>
import FfHero from '../components/FfHero.vue';
import FeatureCard from '../components/FeatureCard.vue';
import CloudTitle from '../components/CloudTitle.vue';
import WoodSign from '../components/WoodSign.vue';

const printingImgUrl = '/images/about/printing.jpg';

const etsyUrl = import.meta.env.VITE_ETSY_URL || 'https://www.etsy.com/';</script>
