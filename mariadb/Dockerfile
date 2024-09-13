FROM debian:buster

RUN apt update && apt install -y mariadb-server

COPY create_sql_init.sh /
RUN /create_sql_init.sh
COPY 50-server-default.conf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mysql_install_db

CMD ["mysqld_safe"]
