module "vpc_tfvars" {
  source  = "app.terraform.io/devopsprasanth/devopsprasanth-network/aws"
  version = "1.0.0"
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
  source  = "app.terraform.io/devopsprasanth/devopsprasanth-sg/aws"
  version = "1.0.0"
  vpc_id = module.vpc_tfvars.vpc_id
}

module "nat_tfvars" {
  source  = "app.terraform.io/devopsprasanth/devopsprasanth-nat/aws"
  version = "1.0.0"
  vpc_name = var.vpc_name
  # vpc_id           = module.vpc_tfvars.vpc_id
  public_subnet_id = module.vpc_tfvars.public_subnet-natgw
}


