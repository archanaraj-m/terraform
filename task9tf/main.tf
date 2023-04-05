resource "aws_instance" "myec2" {
  ami           = "ami-05e8e219ac7e82eba"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}  
resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "192.168.10.0/24"
  availability_zone = "eu-west-3a"

  tags = {
    Name = "subnet"
  }
}
