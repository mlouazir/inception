FROM debian:bullseye

RUN apt update -y && apt install -y redis-server

RUN echo "maxmemory 20mb" >> /etc/redis/redis.conf && echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

ENTRYPOINT [ "redis-server", "--bind 0.0.0.0" ]