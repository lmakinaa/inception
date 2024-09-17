FROM debian:bullseye

RUN apt update && apt install -y mariadb-server && mkdir -p /run/mysqld/

COPY conf/50-server-default.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/c-entry.sh /usr/local/bin/c-entry.sh


CMD ["c-entry.sh"]
