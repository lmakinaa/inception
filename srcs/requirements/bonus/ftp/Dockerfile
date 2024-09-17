FROM debian:bullseye

RUN apt update && apt install -y vsftpd

COPY tools/c-entry.sh /usr/local/bin/c-entry.sh

EXPOSE 21
EXPOSE 20
EXPOSE 40000-50000

CMD ["c-entry.sh"]
