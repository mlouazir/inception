#!/bin/bash

cd /var/www/html/wordpress

wp config create --allow-root --dbname=wp_data --dbuser=wp --dbpass=wp --dbhost=mariadb