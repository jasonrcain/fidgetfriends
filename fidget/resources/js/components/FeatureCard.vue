<template>
  <article class="ff-cloud-panel p-3 p-md-4 h-100 text-center">
    <div class="display-6 mb-2" aria-hidden="true">{{ icon }}</div>
    <h3 class="h5 fw-bold mb-2">{{ title }}</h3>
    <p class="mb-0 ff-muted">{{ text }}</p>
  </article>
</template>

<script setup>
defineProps({
  icon: { type: String, default: '⭐' },
  title: { type: String, required: true },
  text: { type: String, default: '' },
});
</script>
