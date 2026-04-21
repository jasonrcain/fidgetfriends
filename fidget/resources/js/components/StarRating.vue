<template>
  <div class="d-inline-flex align-items-center gap-1" :aria-label="`Rated ${rating} out of 5`">
    <i
      v-for="i in 5"
      :key="i"
      class="bi"
      :class="i <= Math.round(rating) ? 'bi-star-fill' : 'bi-star'"
      style="color: #ffcc33;"
    ></i>
  </div>
</template>

<script setup>
defineProps({
  rating: { type: Number, default: 5 },
});
</script>
