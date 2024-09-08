#!/bin/sh

echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf;
rm -rf *;
curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /wp/wp-cli.phar && \
chmod +x /wp/wp-cli.phar && \
/wp/wp-cli.phar core download --path=/wp --allow-root && \
/wp/wp-cli.phar config create --path=/wp --dbname=wordpress --dbuser=ismail --dbpass=admin --dbhost=mariadb --allow-root --skip-check && \
/wp/wp-cli.phar core install --path=/wp --url=localhost --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root && \
php-fpm8.2 -F
