FROM debian:stable

RUN apt update && apt install -y mariadb-server

COPY start.sh /

COPY 50-server-default.conf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["sh", "/start.sh"]
