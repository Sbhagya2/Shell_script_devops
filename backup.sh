#!/bin/bash 

#date: 16th August,2023
#author: Bhagya Sharma

### This script will take backup of all the scripts ###


src_dir=/home/ubuntu
tgt_dire=/home/ubuntu/backups

curr_timestamp=$(date "+%Y-%m-%d"-)
backup_file=$tgt_dire/$curr_timestamp.tgz

echo "Taking back up on $curr_timestamp"
#echo "$backup_file"

tar czf $backup_file --absolute-names $src_dir

echo "backup complete"
