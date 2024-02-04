module "route53_tfvars" {
  source     = "../modules/route53"
  domainname = "techprasanth.xyz"
  nlb_id     = module.elb_tfvars.elb_id
  recordname = "devopsb27"
  zone_id    = module.elb_tfvars.elb_zone_id
  dns_name   = module.elb_tfvars.elb_dns_name
} 