FROM debian:bullseye
RUN apt update && apt install -y mariadb-server mariadb-client

COPY /conf/init.sh /home/

RUN chmod +x /home/init.sh

ENTRYPOINT [ "/bin/bash", "-c", "/home/init.sh" ]