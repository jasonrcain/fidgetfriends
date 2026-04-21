import { createRouter, createWebHistory } from 'vue-router';

import Home from '../pages/Home.vue';
import Shop from '../pages/Shop.vue';
import About from '../pages/About.vue';
import Contact from '../pages/Contact.vue';

const routes = [
  { path: '/', name: 'home', component: Home },
  { path: '/shop', name: 'shop', component: Shop },
  { path: '/about', name: 'about', component: About },
  { path: '/contact', name: 'contact', component: Contact },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
  scrollBehavior() {
    return { top: 0 };
  },
});

export default router;
