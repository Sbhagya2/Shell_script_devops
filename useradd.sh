#!/bin/bash

#Date : August 16th, 2023
#Author: Bhagya Sharma
##### This script adds user in OS, using Function


add_user()
{
USER=$1
pass=$2

useradd -m -p $pass $USER && echo "Successfully added user"

}

add_user bhagyasharma test@123
