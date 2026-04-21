<template>
  <FfHero
    variant="wood"
    title="Shop!"
    subtitle="Browse fidgets by category, or search by name."
  >
    <template #actions>
      <a class="btn ff-btn-cta" :href="etsyUrl" target="_blank" rel="noopener">
        Shop on Etsy
      </a>
    </template>
  </FfHero>

  <section class="pb-5">
    <div class="container">
      <div class="ff-cloud-panel p-3 p-md-4 mb-4">
        <div class="row g-3 align-items-center">
          <div class="col-12 col-lg">
            <div class="d-flex flex-wrap gap-2 ff-shop-tabs">
              <button
                v-for="c in categories"
                :key="c"
                type="button"
                class="btn btn-sm fw-bold"
                :class="c === activeCategory ? 'ff-tab ff-tab--active' : 'ff-tab'"
                @click="activeCategory = c"
              >
                {{ c }}
              </button>
            </div>
          </div>

          <div class="col-12 col-lg-4">
            <div class="input-group ff-search">
              <span class="input-group-text bg-white">
                <i class="bi bi-search"></i>
              </span>
              <input
                v-model.trim="query"
                type="search"
                class="form-control"
                placeholder="Search fidgets…"
                aria-label="Search fidgets"
              />
            </div>
          </div>
        </div>
      </div>

      <div class="row g-4">
        <div
          v-for="p in filtered"
          :key="p.id"
          class="col-12 col-sm-6 col-lg-4"
        >
          <ProductCard :product="p" :etsy-url="etsyUrl" />
        </div>
      </div>

      <div v-if="filtered.length === 0" class="ff-cloud-panel p-4 text-center mt-4">
        <p class="mb-2 fw-bold">No matches found.</p>
        <p class="mb-0 ff-muted">Try a different search or category.</p>
      </div>
    </div>
  </section>
</template>

<script setup>
import { computed, ref } from 'vue';
import FfHero from '../components/FfHero.vue';
import ProductCard from '../components/ProductCard.vue';
import { PRODUCTS } from '../data/products';

const etsyUrl = import.meta.env.VITE_ETSY_URL || 'https://www.etsy.com/';

const categories = ['All', 'Animals', 'Spinners', 'Cuboids'];
const activeCategory = ref('All');
const query = ref('');

const filtered = computed(() => {
  const q = query.value.toLowerCase();

  return PRODUCTS.filter((p) => {
    const matchesCategory = activeCategory.value === 'All' || p.category === activeCategory.value;
    const matchesQuery = !q || p.name.toLowerCase().includes(q);
    return matchesCategory && matchesQuery;
  });
});
</script>
