#!/bin/bash

service mariadb start

mariadb -e "SET PASSWORD FOR 'root'@'localhost'  = PASSWORD('root')" # PS
mariadb -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME"
mariadb -e "CREATE USER IF NOT EXISTS '$WP_USER'@'%' IDENTIFIED BY 'wp'" # PS
mariadb -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$WP_USER'"
mariadb -e "FLUSH PRIVILEGES"

sleep 7

service mariadb stop

mariadbd --user=mysql --bind_address=0.0.0.0