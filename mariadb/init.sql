ALTER USER 'root'@'localhost' IDENTIFIED BY 'Ofppt@123';

CREATE DATABASE IF NOT EXISTS wordpress;

-- Create a new user and grant privileges
-- % is a wildcard that allow the user to connect to the db from any host
CREATE USER 'ismail'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'ismail'@'%';
FLUSH PRIVILEGES;
