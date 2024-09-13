FROM debian:buster

RUN apt update && apt install -y mariadb-server

COPY 50-server-default.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY c-entry.sh /usr/local/bin/


CMD ["c-entry.sh"]
