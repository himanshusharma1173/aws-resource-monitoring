#!/bin/bash

export AWS_PROFILE=default

##########################
#Author - Himanshu Sharma
#Date - 28th JULY'25
#This script will show you the usage od AWS resources 
#Resouces - S3, EC2, Lambda, IAM users
##########################

#set -x

echo "List of S3 Buckets:"
aws s3 ls #>> /home/ubuntu/Himanshu-New/Cron-AWS-Resource-usage.txt

echo "List of EC2 Instances:"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' #>> /home/ubuntu/Himanshu-New/Cron-AWS-Resource-usage.txt

echo "List of Lambda Functions:"
aws lambda list-functions #>> /home/ubuntu/Himanshu-New/Cron-AWS-Resource-usage.txt

echo "List of IAM users:"
aws iam list-users #>> /home/ubuntu/Himanshu-New/Cron-AWS-Resource-usage.txt
