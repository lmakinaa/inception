#!/bin/sh

echo "ALTER USER 'root'@'localhost' IDENTIFIED BY $DB_ROOT_PASS;

CREATE DATABASE IF NOT EXISTS $DB_NAME;

-- Create a new user and grant privileges
-- % is a wildcard that allow the user to connect to the db from any host
CREATE USER $DB_USER@'%' IDENTIFIED BY $DB_PASS;
GRANT ALL PRIVILEGES ON *.* TO $DB_USER@'%';
FLUSH PRIVILEGES;
" > /etc/mysql/init.sql;

mysqld