FROM debian
RUN apt update && apt install -y nginx && apt install openssl
COPY conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 443
ENTRYPOINT ["nginx"]