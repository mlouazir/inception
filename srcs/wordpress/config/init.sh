#!/bin/bash

cd /var/www/html

wp core download --allow-root

wp config create --allow-root --dbname=wp_data --dbuser=wp --dbpass=wp --dbhost=mariadb:3306

wp core install --allow-root --url=https://localhost --title=mySite --admin_user=admin --admin_password=admin --admin_email=admin@example.com

wp db check --allow-root

php-fpm7.4 -F