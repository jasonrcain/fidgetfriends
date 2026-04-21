<template>
  <div class="ff-wood-sign" :class="sizeClass">
    <img class="ff-wood-sign__bg" :src="woodSignUrl" alt="" aria-hidden="true" />
    <div class="ff-wood-sign__content">
      <slot>{{ title }}</slot>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue';

const woodSignUrl = '/images/theme/wood-sign.svg';

const props = defineProps({
  title: { type: String, default: '' },
  size: { type: String, default: 'md' }, // sm | md | lg
});

const sizeClass = computed(() => {
  if (props.size === 'lg') return 'ff-wood-sign--lg';
  if (props.size === 'sm') return 'ff-wood-sign--sm';
  return 'ff-wood-sign--md';
});</script>
