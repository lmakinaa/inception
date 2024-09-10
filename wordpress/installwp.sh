#!/bin/sh

echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf;
rm -rf *;
curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o ./wp-cli.phar && \
chmod +x ./wp-cli.phar && \
./wp-cli.phar core download --path=/var/www/html --allow-root && \
./wp-cli.phar config create --path=/var/www/html --dbname=wordpress --dbuser=ismail --dbpass=admin --dbhost=mariadb --allow-root && \
./wp-cli.phar core install --path=/var/www/html --url=ijaija.42.fr --title=inception --admin_user=admin --admin_password=admin --admin_email=ijaija@student.1337.ma --allow-root && \
cp /root/wp-config.php ./wp-config.php && chown -R www-data /var/www/html/wp-content && php-fpm8.2 -F
