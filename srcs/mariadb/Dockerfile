FROM debian
RUN apt update && apt install -y mariadb-server mariadb-client

RUN mkdir /run/mysqld && chmod 007 /run/mysqld
USER mysql

ENTRYPOINT [ "sh" ]