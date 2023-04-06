terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 4.47.0"
    }
  }
}


provider "aws" {
}
resource "aws_vpc" "ntier" {
    cidr_block = "ntier-vpc-range"
    tags = {
        Name = "ntier"
    }
}    