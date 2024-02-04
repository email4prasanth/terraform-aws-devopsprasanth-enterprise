module "route53_tfvars" {
  source  = "app.terraform.io/devopsprasanth/devopsprasanth-route53/aws"
  version = "1.0.0"
  domainname = "techprasanth.xyz"
  nlb_id     = module.elb_tfvars.elb_id
  recordname = "devopsb27entreprise"
  zone_id    = module.elb_tfvars.elb_zone_id
  dns_name   = module.elb_tfvars.elb_dns_name
} 