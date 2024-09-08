FROM debian:stable

RUN apt update && apt install -y mariadb-server

COPY init.sql /etc/mysql/
COPY 50-server-default.conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir /run/mysqld

CMD ["mysqld_safe"]
