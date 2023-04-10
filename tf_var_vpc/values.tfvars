region          = "eu-west-3"
ntier-vpc-range = "10.100.0.0/16"
ntier_vpc_info = {
  subnet_names = ["subnet1", "subnet2", "subnet3", "subnet4"]
  subnet_azs   = ["a", "b", "a", "b"]
  vpc_cidr     = "192.168.0.0/16"
}