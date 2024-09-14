FROM debian:stable

RUN apt update && apt install -y vsftpd

COPY c-entry.sh /usr/local/bin/

EXPOSE 21
EXPOSE 20
EXPOSE 40000-50000

CMD ["c-entry.sh"]
