#!/bin/bash

if find key.pem cert.pem; then
    echo "Certificate Already Created"
else
    openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 3650 -nodes -subj "/C=HH/ST=CALIFORNIA/L=TET1/O=MLOUAZIR/OU=ALL/CN=mlouazir.42.fr"
fi