#!/usr/bin/env sh

# Copy nginx.conf template to its rightful place
# Waits until app container is ready
dockerize \
    -template nginx.conf.template:/etc/nginx/conf.d/nginx.conf \
    -wait tcp://${APP_HOSTNAME:-$DEFAULT_APP_HOSTNAME}:${APP_PORT:-$DEFAULT_APP_PORT}

# Runs nginx
nginx -g "daemon off;"
