mv wp-config.php var/www/html
cd var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz > /dev/null
rm latest.tar.gz
mv wp-config.php wordpress
cd wordpress
sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' wp-config.php
sed -i 's/MYSQL_PWD/'${MYSQL_PWD}'/g' wp-config.php
sed -i 's/MYSQL_DB/'${MYSQL_DB}'/g' wp-config.php
cd ../../../..
service php7.3-fpm start
