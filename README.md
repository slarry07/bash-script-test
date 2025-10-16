# DataWise Solutions Bash Automation Project

## Overview
This project delivers a Bash script for DataWise Solutions clients that automates the setup of AWS EC2 instances and S3 buckets. The script is organized using modular functions to ensure clarity, maintainability, and reusability.

## Features
- Checks if the script is called with the required argument
- Verifies AWS CLI is installed before proceeding
- Confirms necessary AWS environment variables or profiles are set
- Organizes AWS automation logic within well-defined Bash functions

## Usage
1. Clone or download the script file.
2. Give execute permission: `chmod +x setup.sh`
3. Run the script with required arguments: `./bash.sh <environment>`

## Functions
- `check_num_of_args`: Ensures the script receives the correct number of arguments
- `activate_infra_environment`: Activates environment-specific settings for AWS automation
- `check_aws_cli`: Verifies AWS CLI is installed and available
- `check_aws_profile`: Ensures an AWS profile environment variable is set

## Prerequisites
- Bash shell (Linux, Mac, or Windows WSL)
- AWS CLI installed and configured with credentials
- Appropriate AWS IAM permissions for EC2 and S3

## Summary
By encapsulating logic in reusable functions, this script simplifies AWS infrastructure setup, reduces errors, and improves code readability. It follows best practices for DevOps automation and can be extended for more AWS services.
