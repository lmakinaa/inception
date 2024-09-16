FROM debian:stable

RUN apt update && apt install -y nodejs npm

COPY files /root/files

WORKDIR /root/files

RUN npm install

CMD ["npm start"]
