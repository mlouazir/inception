FROM debian:bullseye

RUN apt update -y && apt install -y vsftpd

COPY ./conf/vsftpd.conf /etc/

COPY ./conf/init.sh /
RUN chmod +x /init.sh

ENTRYPOINT [ "bash", "-c", "/init.sh" ]