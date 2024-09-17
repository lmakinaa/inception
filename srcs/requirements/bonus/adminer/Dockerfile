FROM debian:bullseye

RUN apt update && apt install -y php php-mysqli wget

RUN mkdir -p /var/www/html && wget https://www.adminer.org/latest.php -O /var/www/html/index.php

EXPOSE 8000

WORKDIR /var/www/html

CMD ["php", "-S", "0.0.0.0:8000"]
