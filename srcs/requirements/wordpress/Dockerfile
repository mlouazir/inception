FROM debian:bullseye

RUN apt update && apt install -y curl \
                        php \
                        php-fpm \
                        php-bcmath \
                        php-curl \
                        php-imagick \
                        php-intl \
                        php-json \
                        php-mbstring \
                        php-mysql \
                        php-xml \
                        php-zip \
                        php-redis

RUN mkdir -p /run/php && mkdir -p /var/www/html && chown -R www-data:www-data /var/www/html

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/
COPY conf/init.sh /home

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN chmod +x /home/init.sh

WORKDIR /var/www/html

ENTRYPOINT [ "/bin/bash", "-c", "/home/init.sh" ]