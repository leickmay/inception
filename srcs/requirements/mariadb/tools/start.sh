#mv 50-server.cnf etc/mysql/mariadb.conf.d

service mysql start
mysql -u root -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PWD}';
GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE wordpress;"
bash
