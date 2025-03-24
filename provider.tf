# Terraform and Provider Configuration

# Specify required providers and their versions
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  # Uncomment and update this block if you want to use remote state storage
  # backend "s3" {
  #   bucket         = "your-terraform-state-bucket"
  #   key            = "static-website/terraform.tfstate"
  #   region         = "ap-southeast-2"
  #   encrypt        = true
  #   dynamodb_table = "terraform-lock-table"
  # }
}

# Configure the AWS Provider
# Credentials should be provided via:
# - AWS CLI configuration
# - Environment variables
# - IAM role
provider "aws" {
  region = var.aws_region
}