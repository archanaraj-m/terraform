variable "region" {
  type        = string
  default     = "eu-west-3"
  description = "Region to create resources"
}

variable "ntier-vpc-range" {
  type        = string
  default     = "192.168.0.0/16"
  description = "VPC Cidr Range"
}
variable "ntier-subnet-cidrs" {
  type    = list(string)
  default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}
variable "ntier-subnet-names" {
  type    = list(string)
  default = ["subnet1", "subnet2", "subnet3", "subnet4"]
}
variable "ntier-subnet-azs" {
  type    = list(string)
  default = ["a", "b", "a", "b"]
}
variable "ntier-vpc-info" {
  type      = object({
    vpc_range = string,
    subnet_names = list(string),
    subnet_azs = list(string)  
  })
  default = {
    vpc_range =  ["192.168.0.0/16"]
    subnet_names = ["subnet1", "subnet2", "subnet3", "subnet4"]
    subnet_azs = ["a", "b", "a", "b"]
  }
}
