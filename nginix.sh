#!/bin/bash 
# install nginix in ubuntu 
set -x 
apt update -y &&  apt install nginx -y # installing nginx service 
service nginx start # starting nginx service 
mkdir -p /content/webapp # create a directory 
sed -i 's|/var/www/html|/content/webapp|g' /etc/nginx/sites-available/default # replacing root directory of nginx 
sed -i 's/daily/weekly/g' /etc/logrotate.d/nginx && sed -i 's/14/4/g' /etc/logrotate.d/nginx # updating log rotation from daily to weekly and changing 14 days to 4 weeks
nginx -t # to test syntax of nginx.
service nginx reload ## reloading nginx service 
