#!/bin/bash

WP_DB_PSSWD=$(</run/secrets/wp_db_psswd)
WP_ADMIN_PSSWD=$(</run/secrets/wp_admin_psswd)
WP_USER_PSSWD=$(</run/secrets/wp_user_psswd)

wp core download --allow-root

wp config create --allow-root --dbname=$DATABASE_NAME --dbuser=$WP_USER --dbpass=$WP_DB_PSSWD --dbhost=mariadb:3306

wp core install --allow-root --url=https://localhost --title=mySite --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PSSWD --admin_email=$WP_ADMIN_EMAIL

wp user create --allow-root $WP_USER $WP_EMAIL --user_pass=$WP_USER_PSSWD

wp plugin install redis-cache --activate --allow-root

wp config set WP_REDIS_HOST redis --allow-root

wp redis enable --allow-root

chmod 777 -R /var/www/html

exec php-fpm7.4 -F