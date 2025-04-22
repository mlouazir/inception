FROM debian:bullseye
RUN apt update && apt install -y nginx openssl

COPY conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 443

COPY conf/init-cert.sh /home

WORKDIR /home

RUN chmod +x /home/init-cert.sh && bash -c /home/init-cert.sh

ENTRYPOINT [ "nginx" ]