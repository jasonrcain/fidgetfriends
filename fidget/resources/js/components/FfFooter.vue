<template>
  <footer class="ff-footer">
    <div class="container">
      <div class="row g-4 align-items-start">
        <div class="col-12 col-lg-5">
          <div class="d-flex align-items-center gap-2 mb-2">
            <span class="ff-brand__fidget" style="font-size: 1.35rem;">Fidget</span>
            <span class="ff-brand__friendz" style="font-size: 1.35rem;">Friendz</span>
          </div>
          <p class="mb-2" style="max-width: 42ch;">
            Colorful, fun, and stress‑relieving 3D printed fidgets for kids and adults alike.
          </p>
          <p class="mb-0 small">
            <i class="bi bi-envelope"></i>
            <a :href="`mailto:${brandEmail}`" class="ms-1">{{ brandEmail }}</a>
          </p>
        </div>

        <div class="col-12 col-sm-6 col-lg-3">
          <h2 class="h6 mb-2">Explore</h2>
          <ul class="list-unstyled mb-0">
            <li><router-link to="/" class="d-inline-block py-1">Home</router-link></li>
            <li><router-link to="/shop" class="d-inline-block py-1">Shop</router-link></li>
            <li><router-link to="/about" class="d-inline-block py-1">About</router-link></li>
            <li><router-link to="/contact" class="d-inline-block py-1">Contact</router-link></li>
          </ul>
        </div>

        <div class="col-12 col-sm-6 col-lg-4">
          <h2 class="h6 mb-2">Follow</h2>
          <div class="d-flex flex-wrap gap-2">
            <a class="btn btn-sm btn-light ff-social-a" :href="etsyUrl" target="_blank" rel="noopener">
              <i class="bi bi-bag-heart me-1"></i> Etsy
            </a>
            <a class="btn btn-sm btn-light ff-social-a" :href="instagramUrl" target="_blank" rel="noopener">
              <i class="bi bi-instagram me-1"></i> Instagram
            </a>
            <a class="btn btn-sm btn-light ff-social-a" :href="facebookUrl" target="_blank" rel="noopener">
              <i class="bi bi-facebook me-1"></i> Facebook
            </a>
          </div>
        </div>
      </div>

      <hr class="my-4" style="border-color: rgba(255,255,255,0.35);" />

      <div class="d-flex flex-column flex-md-row gap-2 justify-content-between small">
        <div>© {{ year }} Fidget Friendz. All rights reserved.</div>
        <div class="text-md-end">
            Built with <span class="heart">&hearts;</span> for our Fidget Friendz.
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup>
const year = new Date().getFullYear();
const etsyUrl = import.meta.env.VITE_ETSY_URL || 'https://www.etsy.com/';
const brandEmail = import.meta.env.VITE_BRAND_EMAIL || 'hello@fidgetfriendz.com';
const instagramUrl = import.meta.env.VITE_INSTAGRAM_URL || 'https://instagram.com/';
const facebookUrl = import.meta.env.VITE_FACEBOOK_URL || 'https://facebook.com/';
</script>
