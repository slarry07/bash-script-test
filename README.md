# Mini Project: Creating AWS Resources with Bash Functions and Arrays

## Overview
This project automates AWS resource creation using Bash functions. It covers:
- Provisioning EC2 instances
- Setting up S3 buckets

Functions and arrays streamline resource management and automation.

## Prerequisites
- AWS CLI installed and configured (`aws configure`)
- Proper IAM permissions for EC2 and S3 actions

## Script

```bash
#!/bin/bash

# Function to provision EC2 instances
provision_ec2() {
    AMI_ID=$1
    INSTANCE_TYPE=$2
    KEY_NAME=$3
    SECURITY_GROUP=$4
    REGION=$5

    aws ec2 run-instances \
        --image-id $AMI_ID \
        --instance-type $INSTANCE_TYPE \
        --key-name $KEY_NAME \
        --security-group-ids $SECURITY_GROUP \
        --count 1 \
        --region $REGION
}

# Function to create S3 buckets using an array
create_s3_buckets() {
    REGION=$1
    shift
    BUCKETS=("$@")
    for BUCKET in "${BUCKETS[@]}"; do
        aws s3api create-bucket \
            --bucket "$BUCKET" \
            --region "$REGION" \
            --create-bucket-configuration LocationConstraint="$REGION"
    done
}

# Example usage:

# Provision one EC2 instance
provision_ec2 "ami-xxxxxxxx" "t2.micro" "your-key-pair" "sg-xxxxxxxx" "us-east-1"

# Create multiple S3 buckets
BUCKET_ARRAY=("my-bucket-1-unique" "my-bucket-2-unique")
create_s3_buckets "us-east-1" "${BUCKET_ARRAY[@]}"
