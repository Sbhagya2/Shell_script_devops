#!/bin/bash

##########################
# Author: Bhagya Sharma
# Date: 30/5/23

# Version: 1 

# this script will report the AWS resource Usage

##########################

# AWS S3
# AWS Ec2
# AWS Lambda
# AWS IAM users

set -x


# this will list all S3 buckets
echo "Print list of S3 buckets"
aws s3 ls > resourceTracker

# list Ec2 instances
echo "print list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker


# list AWS lambda functions
echo "Print list of lamba functions"
aws lambda list-functions

#list IAM Users

echo "Print list of Iam users"
aws iam list-users | jq .Users[].UserName > resourceTracker
