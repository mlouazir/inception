FROM debian
RUN apt-get update && apt-get install -y mariadb-server

RUN mkdir /run/mysqld && chmod 007 /run/mysqld
USER mysql

ENTRYPOINT [ "mariadbd" , "--user=mysql"]