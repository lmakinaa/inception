#!/bin/sh

echo "
ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASSWORD';

CREATE DATABASE IF NOT EXISTS wordpress;

-- Create a new user and grant privileges
-- % is a wildcard that allow the user to connect to the db from any host
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';
FLUSH PRIVILEGES;
" > /etc/mysql/init.sql;

mysql_install_db;
mysqld_safe;