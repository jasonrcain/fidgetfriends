<template>
  <div class="ff-cloud-title" :class="sizeClass">
    <img class="ff-cloud-title__bg" :src="cloudStripUrl" alt="" aria-hidden="true" />
    <div class="ff-cloud-title__content">
      <slot>{{ title }}</slot>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue';

const cloudStripUrl = '/images/theme/cloud-strip.svg';

const props = defineProps({
  title: { type: String, default: '' },
  size: { type: String, default: 'md' }, // sm | md | lg
});

const sizeClass = computed(() => {
  if (props.size === 'lg') return 'ff-cloud-title--lg';
  if (props.size === 'sm') return 'ff-cloud-title--sm';
  return 'ff-cloud-title--md';
});</script>
