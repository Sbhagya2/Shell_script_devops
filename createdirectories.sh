#!/bin/bash 

#Date: 16th August, 2023
#Author: Bhagya Sharma

## This script will iterate directories for n number of days ##


for (( i=$2;i<=$3;i++ ));
do
        mkdir $1$i
done
