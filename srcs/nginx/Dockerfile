FROM debian:bullseye
RUN apt update && apt install -y nginx && apt install -y openssl

COPY conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080

COPY conf/init-cert.sh /home

RUN chmod +x /home/init-cert.sh && sh /home/init-cert.sh

ENTRYPOINT [ "nginx" ]