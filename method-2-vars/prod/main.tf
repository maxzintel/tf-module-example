terraform {
  backend "s3" {
    bucket   = "infrastructure"
    key      = "tf/state"
    region   = "eu-west-1"
    role_arn = "arn:aws:iam::blabla:role/TerraformStateManager"
    # Above role needs:
    # s3:ListBucket on arn:aws:s3:::infrastructure
    # s3:GetObject on arn:aws:s3:::infrastructure/tf/state
    # s3:PutObject on arn:aws:s3:::infrastructure/tf/state
    # s3:DeleteObject on arn:aws:s3:::infrastructure/tf/state
  }
}

provider "aws" {
  region  = "eu-west-1"
  profile = PROFILE
  assume_role {
    role_arn = "arn:aws:iam::blabla:role/adminrole"
  }
}

module "ipfs1" {
  source = "../modules/ec2-boilerplate"
  instance_name = "ipfs1"
  subnet = "private-subnetid-1"
  az = "eu-west-1a"
}

module "ipfs2" {
  source = "../modules/ec2-boilerplate"
  instance_name = "ipfs2"
  subnet = "private-subnetid-2"
  az = "eu-west-1b"
}

module "ipfs3" {
  source = "../modules/ec2-boilerplate"
  instance_name = "ipfs3"
  subnet = "private-subnetid-3"
  az = "eu-west-1c"
}