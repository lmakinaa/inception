FROM debian:bullseye

RUN apt update && apt install -y nodejs npm wget && npm install -g n && n 14

COPY files /root/files
COPY c-entry.sh /root/files/c-entry.sh

WORKDIR /root/files

RUN npm install && npm install -g serve

EXPOSE 3300:3300

CMD ["/root/files/c-entry.sh"]
