terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
# Uncomment the region, access_key and secret_key if you are running locally
provider "aws" {
  # region = "ap-southeast-1" 
  # or
  # region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_region}-${var.bucket_env}-${var.bucket_name}-${var.bucket_ran_num}"

  tags = {
    Name        = "Owned by ${var.bucket_name}"
    Environment = var.bucket_env
  }
}