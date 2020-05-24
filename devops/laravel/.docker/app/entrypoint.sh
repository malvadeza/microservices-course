#!/usr/bin/env sh

# Copy env.template to its rightful place with env variables set
# Wait untill db container is ready
dockerize \
    -template .docker/app/env.template:.env \
    -wait tcp://${DB_HOST:-$DEFAULT_DB_HOST}:${DB_PORT:-$DEFAULT_DB_PORT}

# Install dependencies, generate key, run migrations
composer install
php artisan key:generate
php artisan migrate

# Runs php-fpm to keep container up
php-fpm
