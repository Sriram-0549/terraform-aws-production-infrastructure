module "network" {
  source = "./modules/network"

  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "iam" {
  source = "./modules/iam"

  environment = var.environment
}

module "ec2" {
  source = "./modules/ec2"

  environment              = var.environment
  public_subnet_id         = module.network.public_subnet_id
  public_security_group_id = module.network.public_security_group_id
  key_name                 = var.key_name
  iam_instance_profile     = module.iam.instance_profile_name
}
