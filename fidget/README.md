# Fidget Friendz – Laravel + Vue 3 + Bootstrap 5 scaffold

This folder contains **drop‑in files** you can copy into an existing Laravel 10/11 app to get:

- Vue 3 SPA pages: Home, Shop, About, Contact
- Bootstrap 5 responsive layout
- Reusable template structure: Navbar + Footer + Layout + shared components

## Install dependencies (from your Laravel project root)

```bash
npm install vue@3 vue-router@4 bootstrap @popperjs/core bootstrap-icons
npm install -D @vitejs/plugin-vue
```

## Copy files

Copy the contents of this scaffold into your Laravel project, preserving paths:

- `resources/views/app.blade.php`
- `routes/web.php` (merge carefully if you already have routes)
- `resources/js/**`
- `resources/css/app.css`
- `vite.config.js` (merge carefully)

## Add to `.env` (optional)

```env
VITE_ETSY_URL="https://www.etsy.com/shop/YourShopName"
VITE_BRAND_EMAIL="hello@fidgetfriendz.com"
VITE_INSTAGRAM_URL="https://instagram.com/ShopFidgetFriendz"
VITE_FACEBOOK_URL="https://facebook.com/FidgetFriendz"
```

## Run

```bash
php artisan serve
npm run dev
```

Navigate to:
- `/`
- `/shop`
- `/about`
- `/contact`


## Fast "looks-like-the-mockups" approach included

This updated scaffold includes an **asset-backed illustrated header** and **sign-style headings** so the layout can match your provided images much more closely.

### Theme assets (placeholders)

These live in:

- `public/images/theme/`

Included placeholders:
- `logo.svg`
- `rainbow.svg`
- `mascot-left.svg`
- `mascot-right.svg`
- `cloud-strip.svg` (nav + cloud titles)
- `wood-sign.svg`
- `ribbon-banner.svg`
- `sky-texture.png`

**To get a near-1:1 match**, export the real artwork from your design file (Figma/PSD) and replace these filenames.

### Key reusable components

- `resources/js/components/SiteHeader.vue` (logo + mascots + rainbow + cloud nav)
- `resources/js/components/WoodSign.vue`
- `resources/js/components/RibbonBanner.vue`
- `resources/js/components/CloudTitle.vue`

The pages use these components so future pages automatically inherit the same look.
