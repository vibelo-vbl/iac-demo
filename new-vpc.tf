provider "aws" {
  region = "us-west-2"
}

module "newvpc" {
  source = "terraform-aws-modules/vpc/aws"
  cidr = "10.7.0.0/16"
  
  azs = ["us-west-2a", "us-west-2c"]
  public_subnets = ["10.7.100.0/24", "10.7.200.0/24"]
}
