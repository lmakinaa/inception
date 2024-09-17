#!/bin/sh

cd /var/www/html;
rm -rf *;
curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o ./wp-cli.phar && \
chmod +x ./wp-cli.phar && \
./wp-cli.phar core download --path=/var/www/html --allow-root;

cp /root/wp-config.php /var/www/html/wp-config.php;

sed -i "s/<DB_NAME>/$DB_NAME/" /var/www/html/wp-config.php;
sed -i "s/<DB_USER>/$DB_USER/" /var/www/html/wp-config.php;
sed -i "s/<DB_PASS>/$DB_PASS/" /var/www/html/wp-config.php;

./wp-cli.phar core install --path=/var/www/html --url=$URL --title=inception --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_MAIL --allow-root;
./wp-cli.phar user create $WP_USER $WP_MAIL --role=editor --user_pass=$WP_PASS --path=/var/www/html --allow-root;

./wp-cli.phar user create $WP_USER $WP_MAIL --role=editor --user_pass=$WP_PASS --path=/var/www/html --allow-root > /dev/null 2>&1;


chown -R www-data /var/www/html/wp-content;

./wp-cli.phar plugin install redis-cache --activate --allow-root;

php-fpm7.4 -F
