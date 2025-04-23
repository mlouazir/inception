FROM debian:bullseye

RUN apt update -y && apt install -y adminer

COPY conf/adminer.conf /etc/apache2/conf-available/
RUN a2enconf adminer.conf

ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]