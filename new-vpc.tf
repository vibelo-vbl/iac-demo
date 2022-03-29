provider "aws" {
  region = "us-west-2"
}

module "newvpc" {
  source = "terraform-aws-modules/vpc/aws"
  cidr = "10.200.0.0/16"
}
