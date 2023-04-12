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
resource "aws_lb" "loadbal1" {
  load_balancer_type = "application"
}
resource "aws_lb_target_group" "targetgrp1" {
  port     = 80
  protocol = "HTTP"
  vpc_id   = vpc-0f87db502b31e8994
  arn = "arn:aws:elasticloadbalancing:eu-west-3:760450597737:targetgroup/targetgrp1/4ced3800cd4095ec"
}
