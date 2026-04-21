<template>
  <section class="py-4 py-md-5">
    <div class="container">
      <div class="ff-hero-shell p-4 p-md-5 text-center">
        <div class="d-flex justify-content-center">
          <WoodSign
            v-if="variant === 'wood'"
            :title="title"
            size="lg"
          />
          <RibbonBanner
            v-else-if="variant === 'ribbon'"
            :title="title"
            size="lg"
          />
          <h1 v-else class="ff-hero-title mb-2">{{ title }}</h1>
        </div>

        <p v-if="subtitle" class="ff-hero-subtitle mt-3 mb-0">{{ subtitle }}</p>

        <div v-if="$slots.actions" class="d-flex justify-content-center gap-2 flex-wrap mt-4">
          <slot name="actions" />
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import WoodSign from './WoodSign.vue';
import RibbonBanner from './RibbonBanner.vue';

defineProps({
  title: { type: String, required: true },
  subtitle: { type: String, default: '' },
  variant: { type: String, default: 'cloud' }, // cloud | wood | ribbon
});
</script>
