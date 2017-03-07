sudo rm -rf core
git clone https://github.com/owncloud/core.git
fecha=`date +%d-%m-%y`
sudo cp -r core "/var/www/html/master_$fecha"
sudo chown -R ubuntu:www-data "/var/www/html/master_$fecha"
cd "/var/www/html/master_$fecha"
make

