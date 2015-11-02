#!/bin/sh

wget -O vtiger.tar.gz $1
tar zxf vtiger.tar.gz
mv /vtigercrm /app
rm /vtiger.tar.gz
chown -R www-data:www-data /app
find /app -type f -exec chmod 644 {} \;
find /app -type d -exec chmod 755 {} \;

#create DB folder
mkdir -p /var/lib/mysql