FROM debian:stable

RUN apt update && apt install -y php-fpm curl

RUN echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf

COPY installwp.sh /root

WORKDIR /wp

RUN sh /root/installwp.sh

CMD ["php-fpm8.2", "-F"]
