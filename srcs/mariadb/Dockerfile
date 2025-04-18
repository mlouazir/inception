FROM debian:bullseye
RUN apt update && apt install -y mariadb-server mariadb-client

COPY /conf/init.sh /home/

RUN chmod +x /home/init.sh
RUN sh /home/init.sh

ENTRYPOINT [ "mariadbd", "--user=mysql", "--bind_address=0.0.0.0" ]