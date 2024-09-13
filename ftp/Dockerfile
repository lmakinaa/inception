FROM debian:stable

RUN apt update && apt install -y vsftpd

#RUN mkdir -p /var/run/vsftpd/empty && chown -R test:test /wp && chmod +w /wp

COPY c-entry.sh /usr/local/bin/

EXPOSE 21
EXPOSE 20
EXPOSE 40000-40010

CMD ["c-entry.sh"]
