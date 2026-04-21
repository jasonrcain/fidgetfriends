<template>
  <nav class="navbar navbar-expand-lg navbar-light ff-navbar px-3 py-2" aria-label="Primary">
    <router-link class="ff-brand me-2" to="/">
      <span class="ff-brand__fidget">Fidget</span>
      <span class="ff-brand__friendz">Friendz</span>
    </router-link>

    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#ffPrimaryNav"
      aria-controls="ffPrimaryNav"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="ffPrimaryNav">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0 ff-pill">
        <li class="nav-item">
          <router-link class="nav-link ff-navlink" to="/">Home</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link ff-navlink" to="/shop">Shop</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link ff-navlink" to="/about">About</router-link>
        </li>
        <li class="nav-item">
          <router-link class="nav-link ff-navlink" to="/contact">Contact</router-link>
        </li>
      </ul>
    </div>
  </nav>
</template>
