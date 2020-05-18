FROM nginx:1.17.10-alpine

# Remove default conf and copy our configuration
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
