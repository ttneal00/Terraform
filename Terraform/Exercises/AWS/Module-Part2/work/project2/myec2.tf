
module "provider" {
  source = "../../modules/providers"
}

module "module-ec2" {
  source = "../../modules/ec2"
}
