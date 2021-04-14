#!/bin/sh
openrc
touch /run/openrc/softlevel
service php-fpm7 restart
#service php-mbpstring7 restart
./telegraf/telegraf & /usr/bin/supervisord -c /etc/supervisord.conf

while true; do
    sleep 5;
done;