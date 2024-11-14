terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket         = "marzouk-nti-terraform-project"
    key            = "terraform.tfstate"  # e.g., "envs/dev/terraform.tfstate"
    region         = "us-east-1"                 # AWS region where the bucket is located
    dynamodb_table = "terraform-state-table"      # Optional, for state locking
  }
} 

provider "aws" {
  region = "us-east-1"
}