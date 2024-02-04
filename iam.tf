module "iam_tfvars" {
  source  = "app.terraform.io/devopsprasanth/devopsprasanth-iam/aws"
  version = "1.0.0"
  env                = var.env
  rolename           = "devopsb27testrole"
  instantprofilename = "devopsb27instprofile"
}