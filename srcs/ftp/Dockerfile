FROM debian:bullseye

RUN apt update -y && apt install -y vsftpd

COPY ./conf/vsftpd.conf /etc/
RUN mkdir -p /var/run/vsftpd/empty

ENTRYPOINT [ "vsftpd", "/etc/vsftpd.conf" ]