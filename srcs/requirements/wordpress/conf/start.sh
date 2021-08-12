wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz > /dev/null
rm latest.tar.gz
mkdir var/www
mkdir var/www/html
mv wordpress /var/www/html
bash

