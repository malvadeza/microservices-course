FROM php:7.4.6-fpm-alpine3.11

# Install basic packages
RUN apk add bash mysql-client

# Install extensions
RUN docker-php-ext-install pdo_mysql

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Removes php html folder
RUN rm -rf /var/www/html

# Sets symlink to public folder
WORKDIR /var/www
RUN ln -s public html

EXPOSE 9000
ENTRYPOINT [ "php-fpm" ]
