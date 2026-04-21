#!/usr/bin/env bash
set -euo pipefail

cd /var/www

echo ">> Installing node deps if needed..."
if [ ! -d "/var/www/node_modules" ]; then
  if [ -f package-lock.json ]; then
    npm ci
  else
    npm install
  fi
fi

# Make sure the directory exists and force a hot file Laravel can read.
mkdir -p /var/www/public
echo "http://localhost:8081" > /var/www/public/hot
echo ">> Hot file set to: $(cat /var/www/public/hot)"

echo ">> Starting Vite dev server on :8081 ..."
# IMPORTANT: run the Vite *dev* server (HMR). No --origin (your Vite doesn't support it).
npm run dev -- --host 0.0.0.0 --port 8081 --strictPort &
VITE_PID=$!

echo ">> Starting Laravel dev server on :8000 ..."
php artisan serve --host=0.0.0.0 --port=8000 &
APP_PID=$!

trap 'echo ">> Stopping..."; kill $VITE_PID $APP_PID 2>/dev/null || true' SIGINT SIGTERM

# Exit if either dies
wait -n $VITE_PID $APP_PID
exit $?
