resource "aws_instance" "web" {
  ami           = ami-05e8e219ac7e82eba
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}  