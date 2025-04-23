FROM debian:bullseye

RUN apt update -y && apt install -y wget
RUN wget https://github.com/google/cadvisor/releases/download/v0.52.1/cadvisor-v0.52.1-linux-amd64 && mv cadvisor-v0.52.1-linux-amd64 cadvisor
RUN chmod +x cadvisor

ENTRYPOINT [ "./cadvisor" ]