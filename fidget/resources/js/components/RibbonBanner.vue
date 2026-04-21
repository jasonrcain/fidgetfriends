<template>
  <div class="ff-ribbon" :class="sizeClass">
    <img class="ff-ribbon__bg" :src="ribbonBannerUrl" alt="" aria-hidden="true" />
    <div class="ff-ribbon__content">
      <slot>{{ title }}</slot>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue';

const ribbonBannerUrl = '/images/theme/ribbon-banner.svg';

const props = defineProps({
  title: { type: String, default: '' },
  size: { type: String, default: 'md' }, // sm | md | lg
});

const sizeClass = computed(() => {
  if (props.size === 'lg') return 'ff-ribbon--lg';
  if (props.size === 'sm') return 'ff-ribbon--sm';
  return 'ff-ribbon--md';
});</script>
