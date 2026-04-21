<template>
  <SiteHeader />

  <main class="ff-main">
    <slot />
  </main>

  <FfFooter />
</template>

<script setup>
import SiteHeader from '../components/SiteHeader.vue';
import FfFooter from '../components/FfFooter.vue';
</script>
