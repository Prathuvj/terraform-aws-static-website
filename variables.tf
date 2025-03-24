# AWS Region
# Update this value based on your preferred deployment region
# Example regions:
# - ap-southeast-2 (Sydney)
# - us-east-1 (N. Virginia)
# - eu-west-1 (Ireland)
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-2"
}

# EC2 Instance Type
# Free tier eligible: t2.micro
# For production, consider:
# - t3.small (2 vCPU, 2GB RAM)
# - t3.medium (2 vCPU, 4GB RAM)
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# Amazon Machine Image (AMI) ID
# IMPORTANT: Update this value based on your region
# This default is for Amazon Linux 2 in ap-southeast-2
# To find the correct AMI ID for your region:
# 1. Visit: https://aws.amazon.com/amazon-linux-2/
# 2. Click on the AMI IDs link for your region
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0361bbf2b99f46c1d"  # Amazon Linux 2 AMI in ap-southeast-2
}

# VPC and Subnet CIDR blocks
# Only modify if you need specific IP ranges
# Make sure these don't conflict with existing VPCs in your account
variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for subnet"
  type        = string
  default     = "10.0.1.0/24"
}