module "vpc_tfvars" {
  source                     = "../modules/network"
  vpc_name                   = var.vpc_name
  cidr_block                 = var.cidr_block
  env                        = var.env
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  azs                        = var.azs
  instance_type              = var.instance_type
  key                        = var.key
  region                     = var.region
  natgw_id                   = module.nat_tfvars.natgw_id

}

module "sg_tfvars" {
  source = "../modules/sg"
  vpc_id = module.vpc_tfvars.vpc_id
}

module "nat_tfvars" {
  source   = "../modules/nat"
  vpc_name = var.vpc_name
  # vpc_id           = module.vpc_tfvars.vpc_id
  public_subnet_id = module.vpc_tfvars.public_subnet-natgw
}


