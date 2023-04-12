resource "aws_vpc" "mainvpc" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "mainvpc"
  }
}
resource "aws_subnet" "one" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "two" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
resource "aws_subnet" "db" {
  vpc_id     = aws_vpc.mainvpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "subnet1"
  }
}