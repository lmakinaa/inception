FROM debian:stable

RUN apt update && apt install -y php-fpm curl sendmail php-mysqli php-redis

RUN echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf

COPY installwp.sh /usr/local/bin/installwp.sh
COPY wp-config.php /root/wp-config.php

CMD ["installwp.sh"]

