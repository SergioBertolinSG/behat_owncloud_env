sudo rm -rf core
git clone --depth 1 https://github.com/owncloud/core.git
cd core
git fetch --unshallow
git pull --all
git remote set-branches origin '*'
git fetch -vvv
make
cd ..
fecha=`date +%d-%m-%y`
sudo cp -r core "/var/www/html/master_$fecha"
sudo chown -R www-data:www-data "/var/www/html/master_$fecha"

