#!/bin/bash

# Environment variables
ENVIRONMENT=$1

# Function to check the number of arguments
check_num_of_args() {
  echo "Checking the number of arguments..."
  if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <environment>"
    exit 1
  fi
}

# Function to activate infrastructure environment
activate_infra_environment() {
  echo "Activating environment: $ENVIRONMENT"
  case "$ENVIRONMENT" in
    local)
      echo "Running script for Local Environment..."
      ;;
    testing)
      echo "Running script for Testing Environment..."
      ;;
    production)
      echo "Running script for Production Environment..."
      ;;
    *)
      echo "Invalid environment specified. Please use 'local', 'testing', or 'production'."
      exit 2
      ;;
  esac
}

# Function to check if AWS CLI is installed
check_aws_cli() {
  if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it before proceeding."
    exit 3
  fi
}

# Function to check if AWS profile is set
check_aws_profile() {
  if [ -z "$AWS_PROFILE" ]; then
    echo "AWS profile environment variable is not set."
    exit 4
  fi
}

# --- Main Script Execution ---
check_num_of_args "$@"
activate_infra_environment
check_aws_cli
check_aws_profile

echo "All checks passed successfully!"
