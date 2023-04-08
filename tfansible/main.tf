provider "aws" {
  region = "eu-west-3"
}
resource "aws_instance" "ec2" {
  ami           = "ami-05e8e219ac7e82eba"
  
  instance_type = "t2.micro"
  key_name      = aws_key_pair.awsvpc.id
  user_data = "${file("ansible.sh")}"
  tags = {
    Name = "my_ec2"
  }

}
resource "aws_vpc" "mainvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mainvpc"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
resource "aws_security_group" "tfsecurity" {
  name = "tfsecurity"
  ingress {
    from_port   = local.ssh_port
    to_port     = local.ssh_port
    cidr_blocks = [local.anywhere]
    protocol    = local.tcp

  }
  egress {
    from_port   = local.http_port
    to_port     = local.http_port
    cidr_blocks = [local.anywhere]
    protocol    = local.tcp

  }
  tags = {
    Name = "tfsecurity"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.mainvpc.id

  tags = {
    Name = "main"
  }
}
resource "aws_route_table" "example" {
  vpc_id = aws_vpc.mainvpc.id

  route = []

  tags = {
    Name = "example"
  }
}