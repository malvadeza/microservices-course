FROM nginx:1.17.10-alpine

# Install Dockerize dependencies
RUN apk add --no-cache openssl

# Install Dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# DEFAULT variables values
ENV DEFAULT_APP_HOSTNAME=app \
    DEFAULT_APP_PORT=9000

# Remove default conf
RUN rm /etc/nginx/conf.d/default.conf
