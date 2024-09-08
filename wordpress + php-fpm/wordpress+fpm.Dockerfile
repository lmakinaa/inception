FROM debian:stable

RUN apt update && apt install -y php-fpm curl

COPY installwp.sh /root

RUN sh /root/installwp.sh

CMD ["php-fpm8.2", "-F"]
