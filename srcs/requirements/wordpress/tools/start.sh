mkdir var/www
mkdir var/www/wordpress

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp-cli

sed -i 's/SQL_NAME/'${SQL_NAME}'/g' wp-config.php
sed -i 's/SQL_USER/'${SQL_USER}'/g' wp-config.php
sed -i 's/SQL_PASS/'${SQL_PASS}'/g' wp-config.php
sed -i 's/SQL_HOST/'${SQL_HOST}'/g' wp-config.php
cp wp-config.php var/www/wordpress

cd var/www/wordpress
wp-cli core download --allow-root
wp-cli core install --url=${DOMAIN_NAME} --title=${WP_TITLE} --admin_user=${SQL_USER} --admin_password=${SQL_PASS} --admin_email=${WP_MAIL} --allow-root
cd ../../..
cp www.conf etc/php/7.3/fpm/pool.d
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F -R
