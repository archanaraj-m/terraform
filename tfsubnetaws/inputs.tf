variable "region" {
  type        = string
  default     = "eu-west-3"
  description = "Region to create resources"
}
variable "ntier_vpc_info" {
  type = object({
    vpc_cidr     = string,
    subnet_names = list(string),
    subnet_azs   = list(string)
  })
  default = {
    subnet_names = ["subnet1", "subnet2", "subnet3", "subnet4", "subnet5", "subnet6"]
    subnet_azs   = ["a", "b", "a", "b", "a", "b"]
    vpc_cidr     = "192.168.0.0/16"
  }
}
