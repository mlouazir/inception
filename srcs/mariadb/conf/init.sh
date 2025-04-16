#!/bin/bash

service mariadb start

mariadb -e "SET PASSWORD FOR 'root'@'localhost'  = PASSWORD('root')"
mariadb -e "CREATE DATABASE wp_data"
mariadb -e "CREATE USER 'wp'@'%' IDENTIFIED BY 'wp'"
mariadb -e "GRANT ALL PRIVILEGES ON *.* TO 'wp'"
mariadb -e "FLUSH PRIVILEGES"

service mariadb stop