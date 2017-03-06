sudo rm -rf core
git clone https://github.com/owncloud/core.git
cd core
fecha=`date +%d-%m-%y`
sudo cp -r core "/var/www/html/master_$fecha"
sudo chown -R www-data:www-data "/var/www/html/master_$fecha"
cd "/var/www/html/master_$fecha"
sudo -u www-data make

