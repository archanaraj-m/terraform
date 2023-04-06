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
variable "ntier-subnet-cidr" {
  type        = string
  default     = "192.168.0.0/24"
}


#az-availabilityzone