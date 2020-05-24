FROM php:7.4.6-fpm-alpine3.11

# Install basic packages
RUN apk add --no-cache openssl bash mysql-client

# Install Dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# Install extensions
RUN docker-php-ext-install pdo_mysql

# Install composer
#  Probably ideally we wouldn't include composer with the image
#  But I'm just a beginner so I follow tutorials and assignment orders for now
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Removes php html folder
RUN rm -rf /var/www/html

# Sets symlink to public folder
WORKDIR /var/www

# DEFAULT env variables
ENV DEFAULT_DB_HOST=db \
    DEFAULT_DB_PORT=3306

# Don't know if this is needed, original image already contains that
# But again  ¯\_(ツ)_/¯
EXPOSE 9000
