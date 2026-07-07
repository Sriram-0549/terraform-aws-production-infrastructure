terraform {
  backend "s3" {
    bucket         = "sriram-terraform-state"
    key            = "terraform-production/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
