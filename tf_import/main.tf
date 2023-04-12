resource "aws_instance" "vm1" {
  instance_type = "t2.micro"
}
resource "aws_instance" "vm2" {
  instance_type = "t2.micro"
}
resource "aws_vpc" "project-vpc" {
  cidr_block = "192.168.0.0/16"
}
resource "aws_subnet" "sub13b" {
  cidr_block = "192.168.0.0/24"
}
resource "aws_subnet" "sub23apublic" {
  cidr_block = "192.168.1.0/24"
}
resource "aws_subnet" "sub33a" {
  cidr_block = "192.168.2.0/24"
}
resource "aws_subnet" "sub43bpublic" {
  cidr_block = "192.168.3.0/24"
}
resource "aws_subnet" "sub43bpublic" {
  cidr_block = "192.168.3.0/24"
}