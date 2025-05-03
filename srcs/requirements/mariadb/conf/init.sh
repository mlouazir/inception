#!/bin/bash

ROOT_PSSWD=$(</run/secrets/db_root_psswd)
WP_PSSWD=$(</run/secrets/wp_db_psswd)

service mariadb start

mariadb -e "SET PASSWORD FOR 'root'@'localhost'  = PASSWORD('$ROOT_PSSWD')"
mariadb -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME"
mariadb -e "CREATE USER IF NOT EXISTS '$WP_USER'@'%' IDENTIFIED BY '$WP_PSSWD'"
mariadb -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$WP_USER'"
mariadb -e "FLUSH PRIVILEGES"

service mariadb stop

exec mariadbd --user=mysql --bind_address=0.0.0.0