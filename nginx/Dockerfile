# nginx/Dockerfile
FROM nginx:1.25-alpine

RUN rm -f /etc/nginx/conf.d/default.conf

COPY conf.d/ /etc/nginx/conf.d/
COPY includes/ /etc/nginx/includes/
