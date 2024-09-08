FROM debian:stable

RUN apt update && apt install -y php-fpm curl php-mysqli

RUN echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf

COPY installwp.sh /root

WORKDIR /wp

CMD ["sh", "/root/installwp.sh"]

