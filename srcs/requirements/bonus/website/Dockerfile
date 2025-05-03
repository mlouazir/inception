FROM debian:bullseye
RUN apt update && apt install -y nginx

COPY src/index.html /var/www/html

COPY conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "nginx" ]