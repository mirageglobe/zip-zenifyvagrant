#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo "[+] Install common dependancies"
apt-get install build-essential -y > /dev/null

apt-get update > /dev/null
apt-get upgrade -y > /dev/null

echo "[+] Install git"
apt-get install git -y > /dev/null

echo "[+] Install nginx"
apt-get install nginx -y -f > /dev/null

echo "[+] Install mysql / mariadb 10.0"

cp /vagrant_data/mariadb.my.cnf ~/.my.conf

apt-get install software-properties-common -y
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
#sudo add-apt-repository 'deb [arch=amd64,i386] http://lon1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu trusty main'
add-apt-repository 'deb [arch=amd64,i386] http://lon1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'
debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password password PASS'
debconf-set-selections <<< 'mariadb-server-10.0 mysql-server/root_password_again password PASS'
apt-get update
apt-get install mariadb-server -y > /dev/null

echo "[+] Setting mysql pass to devpass and using .my.cnf in homefolder"
mysql -uroot -pPASS -e "SET PASSWORD = PASSWORD('devpass');"

echo "[+] Installing php-fpm and update nginx"
sudo apt-get install php5-fpm -y
mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
cp /vagrant_data/nginx.default.conf /etc/nginx/sites-available/default
cp /vagrant_data/nginx.info.php /usr/share/nginx/html/info.php
service nginx restart

echo "[+] Installing wordpress"
curl -L -O "http://wordpress.org/latest.tar.gz"
tar -zxvf latest.tar.gz
rm latest.tar.gz
mv wordpress/ /usr/share/nginx/html/

echo "[+] Setup wordpress"
service nginx restart
