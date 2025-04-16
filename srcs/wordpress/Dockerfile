FROM debian:latest
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
                        php-zip
RUN chown -R www-data:www-data /var/www/html/
RUN curl https://wordpress.org/latest.tar.gz | tar zx -C /var/www/html

COPY config/php-fpm.conf /etc/php/8.2/fpm/
COPY config/www.conf /etc/php/8.2/fpm/pool.d/
COPY config/init.sh /home

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
RUN chmod +x /home/init.sh

ENTRYPOINT [ "php-fpm8.2" ]