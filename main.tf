terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "xxxxx" # Update accordingly
  secret_key = "xxxxx" # Update accordingly
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_region}-${var.bucket_env}-${var.bucket_name}-${var.bucket_ran_num}"

  tags = {
    Name        = "Owned by ${var.bucket_name}"
    Environment = var.bucket_env
  }
}