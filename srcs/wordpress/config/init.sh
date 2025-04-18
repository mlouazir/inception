#!/bin/bash

cd /var/www/html

wp core download --allow-root

wp config create --allow-root --dbname=wp_data --dbuser=wp --dbpass=wp --dbhost=mariadb:3306

wp core install --allow-root --url=https://localhost --title=mySite --admin_user=boss --admin_password=boss --admin_email=admin@example.com

wp user create --allow-root user user@user.com --user_pass=user

wp db check --allow-root

php-fpm7.4 -F