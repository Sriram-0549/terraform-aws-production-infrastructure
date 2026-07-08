# Terraform AWS Production Infrastructure

##  Project Overview

This project demonstrates how to provision AWS infrastructure using Terraform with a modular architecture. The infrastructure is fully automated and deploys an EC2 instance running Nginx with a custom web page using User Data.

---

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- IAM
- Security Groups
- Nginx
- Git
- GitHub
- Linux

---

## Architecture

Internet
|
Internet Gateway
|
VPC
|
Public Subnet
|
Security Group
|
EC2 (Amazon Linux 2023)
|
User Data
|
Nginx
|
Custom HTML Website

---

## Project Structure

```text
terraform-aws-production-infrastructure/
│
├── modules/
│   ├── ec2/
│   ├── iam/
│   └── network/
│
├── backend.tf
├── local.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── variables.tf
├── README.md
└── .gitignore
```

##  Deployment

```bash
terraform init
terraform plan
terraform apply
```

##  Destroy Infrastructure

```bash
terraform destroy
```

##  Features

- Modular Terraform code
- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Groups
- IAM Role
- IAM Instance Profile
- EC2 deployment
- Automatic Nginx installation
- Custom HTML webpage deployment

##  Output

After deployment:

- EC2 launches successfully
- Nginx installs automatically
- Custom web page is accessible through the EC2 Public IP

## 💻 Author

**Sriram**

Aspiring DevOps Engineer
