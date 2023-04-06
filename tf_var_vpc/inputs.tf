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
variable "ntier-subnet1-cidr" {
  type    = string
  default = "192.168.0.0/24"
}
variable "ntier-subnet2-cidr" {
  type    = string
  default = "192.168.1.0/24"
}
variable "ntier-subnet3-cidr" {
  type    = string
  default = "192.168.2.0/24"
}
variable "ntier-subnet4-cidr" {
  type    = string
  default = "192.168.3.0/24"
}