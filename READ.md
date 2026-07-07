# Terraform AWS Production Infrastructure

## Project Overview

This project demonstrates how to provision a production-style AWS infrastructure using Terraform with a modular architecture.

## Technologies Used

- Terraform
- AWS
- EC2
- VPC
- IAM
- Security Groups
- Nginx
- Git
- GitHub

## Project Architecture

Internet
    |
Internet Gateway
    |
VPC
    |
Public Subnet
    |
EC2 Instance
    |
Nginx Web Server

## Features

- Modular Terraform code
- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Groups
- IAM Role
- IAM Instance Profile
- EC2 deployment
- Automatic Nginx installation using User Data
- Custom HTML webpage deployment

## Folder Structure

terraform-aws-production-infrastructure/
├── modules/
│   ├── network/
│   ├── ec2/
│   └── iam/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── README.md

## Deployment

```bash
terraform init
terraform plan
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

## Output

After deployment:

- EC2 launches successfully.
- Nginx installs automatically.
- Custom webpage is accessible using the EC2 Public IP.

## Author

**Sriram**

Aspiring DevOps Engineer
