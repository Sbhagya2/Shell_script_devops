#!/bin/bash 

#Date: 16th August, 2023
#Author: Bhagya Sharma

## This script will iterate directories for n number of days ##

n=90
for (( i=1;i<=$n;i++ ));
do
        mkdir $1$i
done
