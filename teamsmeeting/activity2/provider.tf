terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.47.0"
    }
  }
}
provider "aws" {
  region = "eu-west-3"
  alias = "paris"
}
provider "aws" {
  region = "us-east-1"
  alias = "Virginia"
}