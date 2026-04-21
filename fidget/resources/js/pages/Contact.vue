<template>
  <FfHero
    variant="wood"
    title="Contact Us!"
    subtitle="We’d love to hear from you."
  />

  <section class="pb-5">
    <div class="container">
      <div class="row g-4">
        <div class="col-12 col-lg-7">
          <div class="ff-cloud-panel p-4 p-md-5">
            <CloudTitle title="Send a Message" />

            <p class="ff-muted mt-3 mb-4">
              Got questions, suggestions, or just want to say hi? Fill out the form below and we’ll get back to you.
            </p>

            <form @submit.prevent="submit">
              <div class="row g-3">
                <div class="col-12 col-md-6">
                  <label class="form-label fw-bold" for="name">Your Name</label>
                  <input id="name" v-model.trim="form.name" type="text" class="form-control" required />
                </div>

                <div class="col-12 col-md-6">
                  <label class="form-label fw-bold" for="email">Your Email</label>
                  <input id="email" v-model.trim="form.email" type="email" class="form-control" required />
                </div>

                <div class="col-12">
                  <label class="form-label fw-bold" for="subject">Subject</label>
                  <input id="subject" v-model.trim="form.subject" type="text" class="form-control" required />
                </div>

                <div class="col-12">
                  <label class="form-label fw-bold" for="message">Your Message</label>
                  <textarea
                    id="message"
                    v-model.trim="form.message"
                    class="form-control"
                    rows="5"
                    required
                  ></textarea>
                </div>

                <div class="col-12 d-flex gap-2 align-items-center">
                  <button class="btn ff-btn-cta" type="submit" :disabled="busy">
                    <span v-if="busy" class="spinner-border spinner-border-sm me-2" aria-hidden="true"></span>
                    Send Message
                  </button>
                  <div v-if="status" class="small fw-bold" :class="status.ok ? 'text-success' : 'text-danger'">
                    {{ status.text }}
                  </div>
                </div>
              </div>
            </form>

            <p class="small ff-muted mt-3 mb-0">
              This demo form is front‑end only. Wire it to a Laravel controller when you’re ready.
            </p>
          </div>
        </div>

        <div class="col-12 col-lg-5">
          <div class="ff-cloud-panel p-4 p-md-5 h-100">
            <div class="d-flex justify-content-center mb-3">
              <WoodSign title="Or Reach Out Directly:" />
            </div>

            <p class="mb-2">
              <i class="bi bi-envelope"></i>
              <a class="fw-bold ms-1" :href="`mailto:${brandEmail}`">{{ brandEmail }}</a>
            </p>

            <div class="d-flex flex-wrap gap-2 mt-3">
              <a class="btn btn-light fw-bold" :href="etsyUrl" target="_blank" rel="noopener">
                <i class="bi bi-bag-heart me-1"></i> Etsy
              </a>
              <a class="btn btn-light fw-bold" :href="instagramUrl" target="_blank" rel="noopener">
                <i class="bi bi-instagram me-1"></i> Instagram
              </a>
              <a class="btn btn-light fw-bold" :href="facebookUrl" target="_blank" rel="noopener">
                <i class="bi bi-facebook me-1"></i> Facebook
              </a>
            </div>

            <hr class="my-4" />

            <h3 class="h6 fw-bold mb-2">Typical response time</h3>
            <p class="ff-muted mb-0">
              We usually reply within 1–2 business days.
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { reactive, ref } from 'vue';
import FfHero from '../components/FfHero.vue';
import CloudTitle from '../components/CloudTitle.vue';
import WoodSign from '../components/WoodSign.vue';

const etsyUrl = import.meta.env.VITE_ETSY_URL || 'https://www.etsy.com/';
const brandEmail = import.meta.env.VITE_BRAND_EMAIL || 'hello@fidgetfriendz.com';
const instagramUrl = import.meta.env.VITE_INSTAGRAM_URL || 'https://instagram.com/';
const facebookUrl = import.meta.env.VITE_FACEBOOK_URL || 'https://facebook.com/';

const busy = ref(false);
const status = ref(null);

const form = reactive({
  name: '',
  email: '',
  subject: '',
  message: '',
});

function submit() {
  busy.value = true;
  status.value = null;

  // Replace this with a real POST to Laravel when ready.
  window.setTimeout(() => {
    busy.value = false;
    status.value = { ok: true, text: 'Message ready to send (connect backend to deliver).' };
    form.name = '';
    form.email = '';
    form.subject = '';
    form.message = '';
  }, 600);
}
</script>
