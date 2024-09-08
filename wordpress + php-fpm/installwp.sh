#!/bin/sh

curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /wp/wp-cli.phar && \
chmod +x /wp/wp-cli.phar && \
/wp/wp-cli.phar core download --allow-root && \
/wp/wp-cli.phar config create --dbname=wordpress --dbuser=ismail --dbpass=admin --dbhost=172.17.0.4 --allow-root && \
/wp/wp-cli.phar core install --url=localhost --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root