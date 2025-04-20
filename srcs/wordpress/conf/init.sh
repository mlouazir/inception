#!/bin/bash

# while ! nc -zv mariadb 3306 >/dev/null 2>&1; do sleep 1; done

wp core download --allow-root
                                                                        # PS
wp config create --allow-root --dbname=$DATABASE_NAME --dbuser=$WP_USER --dbpass=wp --dbhost=mariadb:3306
                                                                                                           # PS
wp core install --allow-root --url=https://localhost --title=mySite --admin_user=$WP_ADMIN_USER --admin_password=boss --admin_email=$WP_ADMIN_EMAIL
                                                            # PS
wp user create --allow-root $WP_USER $WP_EMAIL --user_pass=user

# wp db check --allow-root

php-fpm7.4 -F