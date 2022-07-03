module "ipfs1" {
  source = "../modules/ec2-boilerplate"
  env_name = "dev"
  account_number = "123"
  instance_name = "ipfs1"
  subnet = "private-subnetid-1"
}

module "ipfs1" {
  source = "../modules/ec2-boilerplate"
  env_name = "dev"
  account_number = "123"
  instance_name = "ipfs2"
  subnet = "private-subnetid-2"
}

module "ipfs1" {
  source = "../modules/ec2-boilerplate"
  env_name = "dev"
  account_number = "123"
  instance_name = "ipfs2"
  subnet = "private-subnetid-2"
}