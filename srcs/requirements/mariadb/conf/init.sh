#!/bin/bash

ROOT_PSSWD=$(</run/secrets/db_root_psswd)
WP_PSSWD=$(</run/secrets/wp_db_psswd)

service mariadb start

sleep 3

mariadb -u root -p$ROOT_PSSWD -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME"
mariadb -u root -p$ROOT_PSSWD -e "CREATE USER IF NOT EXISTS '$WP_USER'@'%' IDENTIFIED BY '$WP_PSSWD'"
mariadb -u root -p$ROOT_PSSWD -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$WP_USER'"
mariadb -u root -p$ROOT_PSSWD -e "ALTER USER root@localhost IDENTIFIED BY '$ROOT_PSSWD'"

mariadb -u root -p$ROOT_PSSWD -e "FLUSH PRIVILEGES"

sleep 3

mariadb-admin -u root -p$ROOT_PSSWD shutdown

exec mariadbd --user=mysql --bind_address=0.0.0.0