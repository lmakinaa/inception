FROM debian:stable

RUN apt update && apt install -y nodejs npm

COPY files /root/files

WORKDIR /root/files

RUN npm install && npm install -g serve && npm run build

EXPOSE 3300:3300

CMD ["serve", "-s", "-p", "3300", "build"]
