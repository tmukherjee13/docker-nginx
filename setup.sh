#!/bin/bash

DB_ID=$(docker run -d  --name db -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=test mysql)
echo $DB_ID

FPM_ID=$(docker run -d  --name fpm --link $DB_ID:db -p 9000:9000 -v /var/www/dock/dev/html:/var/www/html tmukherjee13/php-fpm)
echo $FPM_ID

WEB_ID=$(docker run -d  --name web --link $FPM_ID:fpm -p 8080:80 -v /var/www/dock/dev/html:/var/www/html tmukherjee13/nginx)
echo $WEB_ID
