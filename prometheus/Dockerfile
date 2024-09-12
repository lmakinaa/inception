FROM debian:stable

RUN apt update && apt install -y wget vim

RUN wget https://github.com/prometheus/prometheus/releases/download/v2.54.1/prometheus-2.54.1.linux-amd64.tar.gz -O /prom.tar.gz && tar xf /prom.tar.gz

WORKDIR /prometheus-2.54.1.linux-amd64

RUN echo "\n  - job_name: \"system monitor\"\n    static_configs:\n      - targets: [\"host-machine:9100\"]" >> /prometheus-2.54.1.linux-amd64/prometheus.yml

EXPOSE 9090:9090

CMD ["/prometheus-2.54.1.linux-amd64/prometheus"]
