#!/bin/sh

echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf;
rm -rf *;
curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o ./wp-cli.phar && \
chmod +x ./wp-cli.phar && \
./wp-cli.phar core download --path=/var/www/html --allow-root;

cp /root/wp-config.php ./wp-config.php && chown -R www-data /var/www/html/wp-content;

sed "s/<DB_NAME>/$DB_NAME/" ./wp-config.php;
sed "s/<DB_USER>/$DB_USER/" ./wp-config.php;
sed "s/<DB_PASS>/$DB_PASS/" ./wp-config.php;


./wp-cli.phar core install --path=/var/www/html --url=$WP_URL --title=inception --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_MAIL --allow-root && \
./wp-cli.phar user create --path=/var/www/html --user_login=$WP_USER --user_pass=$WP_PASS --user_email=$WP_MAIL --role=subscriber --allow-root && \
./wp-cli.phar plugin install redis-cache --activate --allow-root && php-fpm8.2 -F
