#!/bin/bash

##author: Bhagya sharma
## Date : 21st August, 2023

df -h | awk '{print $5 " "$1}' | while read output;
do
#echo "Disk detail: $output "
usage=$(echo $output | awk '{print$1}' | cut -d'%' -f1)
file_system=$(echo $output | awk '{print $2}')
echo $usage
if [[ $usage -le 90 ]]
then
        echo "CRITICAL for $file_system"
fi
done
