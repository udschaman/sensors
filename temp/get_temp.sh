#!/bin/bash

tempread=`cat /sys/bus/w1/devices/28-0516709676ff/w1_slave`
temp=`echo "scale=2; "\`echo ${tempread##*=}\`" / 1000" | bc`
date=`date '+%Y-%m-%d %H:%M'`
temp=$(python -c "print $temp+1.0")
echo $date", "$temp >> /var/www/html/data.csv
