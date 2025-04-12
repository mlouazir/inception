FROM debian
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

ENTRYPOINT [ "php-fpm8.2" ]