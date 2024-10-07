# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "ga-terraform-aws-handson"
    key     = "ga-terraform-aws-handson"
    region  = "ap-northeast-1"
    profile = "ga-terraform-aws-handson"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "ga-terraform-aws-handson"
  region  = "ap-northeast-1"
}
