FROM debian:bullseye

RUN apt update && apt install -y php-fpm curl sendmail php-mysqli php-redis

RUN echo "listen = 9000" >> /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/installwp.sh /usr/local/bin/installwp.sh
COPY conf/wp-config.php /root/wp-config.php

RUN mkdir -p /run/php/

CMD ["installwp.sh"]

