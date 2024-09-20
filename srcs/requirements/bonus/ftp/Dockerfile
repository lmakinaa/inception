FROM debian:bullseye

RUN apt update && apt install -y vsftpd

COPY tools/c-entry.sh /usr/local/bin/c-entry.sh

# Command port
EXPOSE 21

# Data port
EXPOSE 20

# Pasv ports
EXPOSE 40000-40100

CMD ["c-entry.sh"]
