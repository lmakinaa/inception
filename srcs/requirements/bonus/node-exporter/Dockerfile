FROM debian:bullseye

RUN apt update && apt install -y wget

RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz -O /node-exporter.tar.gz && tar xf /node-exporter.tar.gz

WORKDIR /node_exporter-1.8.2.linux-amd64

EXPOSE 9100:9100

CMD ["/node_exporter-1.8.2.linux-amd64/node_exporter", "--path.rootfs=/host"]
