module "iam_tfvars" {
  source             = "../modules/iam"
  env                = var.env
  rolename           = "devopsb27testrole"
  instantprofilename = "devopsb27instprofile"
}