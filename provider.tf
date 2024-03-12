terraform {
  backend "s3" {
    bucket         = "mybucketteraform"
    key            = "tfstate/state"
    region         = "us-east-2"
    dynamodb_table = "my-lock-table"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

