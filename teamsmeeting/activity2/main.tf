module "vpc1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"
  name = "myvpc"
  cidr = "192.168.0.0/16"
  providers = {
    aws = aws.paris
  }
}
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"
  name = "myvpc"
  cidr = "192.168.0.0/16"
  providers = {
    aws = aws.Virginia
  }
}
