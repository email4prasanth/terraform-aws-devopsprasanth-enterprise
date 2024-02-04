module "elb_tfvars" {
  source  = "app.terraform.io/devopsprasanth/devopsprasanth-elb/aws"
  version = "1.0.0"
  env             = var.env
  nlbname         = "dev-nlb"
  subnets         = module.vpc_tfvars.public_subnets
  tgname          = "dev-nlb-tg"
  vpc_id          = module.vpc_tfvars.vpc_id
  private_servers = module.ec2_tfvars.private_servers
} 