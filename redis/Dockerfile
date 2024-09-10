FROM debian:stable

RUN apt update && apt install -y redis-server

EXPOSE 6379

RUN echo "protected-mode no" >> /etc/redis/redis.conf

CMD ["redis-server", "--daemonize", "no", "--protected-mode", "no"]
