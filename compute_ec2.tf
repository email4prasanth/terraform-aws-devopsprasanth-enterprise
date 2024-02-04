module "ec2_tfvars" {
  source  = "app.terraform.io/devopsprasanth/devopsprasanth-compute/aws"
  version = "1.0.0"
  env                  = var.env
  imagename            = var.imagename
  aws_region           = var.region
  vpc_name             = var.vpc_name
  instance_type        = var.instance_type
  key                  = var.key
  public_subnets       = module.vpc_tfvars.public_subnets
  private_subnets      = module.vpc_tfvars.private_subnets
  sg_id                = module.sg_tfvars.sg_id
  iam_instance_profile = module.iam_tfvars.instprofile
  depends_on = [
    module.nat_tfvars.natgw_id, #depends on
    module.elb_tfvars.elb_listener
  ]
}



