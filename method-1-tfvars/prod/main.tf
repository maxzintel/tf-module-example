module "ipfs1" {
  source = "../modules/ec2-boilerplate"
  instance_name = "ipfs1"
  subnet = "private-subnetid-1"

}

module "ipfs2" {
  source = "../modules/ec2-boilerplate"

  instance_name = "ipfs2"
  subnet        = "private-subnetid-2"
}

module "ipfs3" {
  source = "../modules/ec2-boilerplate"

  instance_name = "ipfs3"
  subnet        = "private-subnetid-3"
}