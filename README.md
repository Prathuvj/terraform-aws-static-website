# Static Website Deployment with Terraform on AWS

This Terraform configuration automatically deploys a static website on AWS EC2 instance. It creates all necessary infrastructure including VPC, subnet, security groups, and an EC2 instance running Apache web server.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (v0.12 or later)
- [AWS CLI](https://aws.amazon.com/cli/) installed and configured
- AWS account with appropriate permissions

## Infrastructure Components

- VPC with public subnet
- Internet Gateway
- Route Table with public route
- Security Group (allowing HTTP and SSH access)
- EC2 instance with Apache web server
- Basic static website template

## Configuration

Before deploying, you may want to modify the following variables in `variables.tf`:

- `aws_region`: Your preferred AWS region (default: ap-southeast-2)
- `instance_type`: EC2 instance type (default: t2.micro)
- `ami_id`: AMI ID for your region
- `vpc_cidr`: VPC CIDR block
- `subnet_cidr`: Subnet CIDR block

## AWS Credentials Setup

1. Create an AWS IAM user with appropriate permissions
2. Configure AWS CLI with your credentials:
   ```bash
   aws configure
   ```
   Or set environment variables:
   ```bash
   export AWS_ACCESS_KEY_ID="your_access_key"
   export AWS_SECRET_ACCESS_KEY="your_secret_key"
   export AWS_REGION="ap-southeast-2"
   ```

## Deployment Steps

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the deployment plan:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

4. After successful deployment, Terraform will output:
   - Website URL
   - Instance public IP
   - Instance ID

## Customization

- Modify the static website content in `scripts/user_data.sh`
- Adjust security group rules in `main.tf` if needed
- Update instance type or region in `variables.tf`

## Clean Up

To destroy all created resources:
```bash
terraform destroy
```

## Security Considerations

- The default configuration opens SSH (22) and HTTP (80) ports to all IPs (0.0.0.0/0)
- Consider restricting SSH access to your IP range in production
- Consider using HTTPS in production
- Review and adjust security group rules as needed

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details