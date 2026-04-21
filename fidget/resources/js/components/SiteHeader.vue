<template>
  <header class="ff-site-header">
    <div class="container">
      <div class="ff-site-header__top">
        <img
          class="ff-site-header__mascot ff-site-header__mascot--left"
          :src="mascotLeftUrl"
          alt=""
          aria-hidden="true"
        />

        <div class="ff-site-header__logo-wrap">
          <img
            class="ff-site-header__rainbow"
            :src="rainbowUrl"
            alt=""
            aria-hidden="true"
          />
          <router-link class="ff-site-header__logo-link" to="/" aria-label="Fidget Friendz home">
            <img
              class="ff-site-header__logo"
              :src="logoUrl"
              alt="Fidget Friendz"
            />
          </router-link>
        </div>

        <img
          class="ff-site-header__mascot ff-site-header__mascot--right"
          :src="mascotRightUrl"
          alt=""
          aria-hidden="true"
        />
      </div>

      <nav class="navbar navbar-expand-md navbar-light ff-cloud-nav" aria-label="Primary navigation">
        <div class="container-fluid px-0">
          <button
            class="navbar-toggler ms-auto"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#ffNav"
            aria-controls="ffNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="ffNav">
            <ul class="navbar-nav mx-auto align-items-md-center gap-1 gap-md-2 py-2 py-md-0">
              <li class="nav-item">
                <RouterLink class="nav-link ff-navlink" to="/">Home</RouterLink>
              </li>
              <li class="nav-item">
                <RouterLink class="nav-link ff-navlink" to="/shop">Shop</RouterLink>
              </li>
              <li class="nav-item">
                <RouterLink class="nav-link ff-navlink" to="/about">About</RouterLink>
              </li>
              <li class="nav-item">
                <RouterLink class="nav-link ff-navlink" to="/contact">Contact</RouterLink>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
</template>

<script setup>
import { RouterLink } from 'vue-router';

const cloudStripUrl = '/images/theme/cloud-strip.svg';

const mascotRightUrl = '/images/theme/mascot-right.svg';

const mascotLeftUrl = '/images/theme/mascot-left.svg';

const rainbowUrl = '/images/theme/rainbow.svg';

const logoUrl = '/images/theme/logo.svg';</script>
