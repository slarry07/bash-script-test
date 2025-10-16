# Bash Script Functions Project

## Overview
This project demonstrates how to organize shell scripts using functions for clarity and modularity. The script includes functions to check if required arguments are provided, verify AWS CLI installation, ensure AWS authentication environment variables are set, and activate the infrastructure environment.

## Features
- Checks that script arguments are supplied
- Verifies AWS CLI is installed
- Confirms AWS profile environment variable is set
- Demonstrates best practices for encapsulating logic in Bash functions

## Usage
1. Clone the repository or copy the script file.
2. Ensure the script has execute permission: `chmod +x script.sh`
3. Run the script with required arguments: `./script.sh <your-argument>`

## Functions
- `check_num_of_args`: Ensures required arguments are provided
- `activate_infra_environment`: Activates or sets up the infrastructure environment
- `check_aws_cli`: Checks if AWS CLI is installed
- `check_aws_profile`: Verifies the AWS profile environment variable is set

## Prerequisites
- Bash shell
- AWS CLI installed and configured

## Summary
This project improved my skills in Bash scripting by teaching me how to structure code using functions, check for prerequisites, and handle user input for cloud automation tasks.
