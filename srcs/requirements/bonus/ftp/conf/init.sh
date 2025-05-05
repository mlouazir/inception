#!/bin/bash

PSSD=$(</run/secrets/ftp_client_psswd)

mkdir -p /var/run/vsftpd/empty

useradd -m ftp_client
echo "ftp_client:$PSSD" | chpasswd

chmod 777 -R /home/ftp_client

exec vsftpd /etc/vsftpd.conf