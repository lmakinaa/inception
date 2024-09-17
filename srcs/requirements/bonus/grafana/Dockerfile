FROM debian:bullseye

RUN apt update && apt install -y wget adduser libfontconfig1 musl vim bash

RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-11.2.0.linux-amd64.tar.gz -O /grafana.tar.gz && tar xf /grafana.tar.gz

WORKDIR /grafana-v11.2.0

COPY conf/prometheus-datasource.yml /grafana-v11.2.0/conf/provisioning/datasources/prometheus.yml

RUN cd /grafana-v11.2.0/conf/provisioning && mkdir templates && wget https://grafana.com/api/dashboards/1860/revisions/37/download -O templates/prometheus.json

COPY conf/prometheus-dashboard.yml /grafana-v11.2.0/conf/provisioning/dashboards/prometheus.yml

EXPOSE 3000:3000

CMD ["/bin/sh", "-c", "/grafana-v11.2.0/bin/grafana server > /dev/null"]
