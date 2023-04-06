
resource "aws_vpc" "ntier" {
    cidr_block = var.ntier-vpc-range
    tags = {
        Name = "ntier"
    }
}    
resource "aws_subnet" "subnet1" {
    cidr_block = var.ntier-subnet1-cidr
    availability_zone = "${var.region}a"
    vpc_id = aws_vpc.ntier.id
    depends_on = [
        aws_vpc.ntier
    ]
}
resource "aws_subnet" "subnet2" {
    cidr_block = var.ntier-subnet2-cidr
    availability_zone = "${var.region}b"
    vpc_id = aws_vpc.ntier.id
    depends_on = [
        aws_vpc.ntier
    ]
}
resource "aws_subnet" "db11" {
    cidr_block = var.ntier-db1-cidr
    availability_zone = "${var.region}a"
    vpc_id = aws_vpc.ntier.id
    depends_on = [
        aws_vpc.ntier
    ]
}
resource "aws_subnet" "db2" {
    cidr_block = var.ntier-db2-cidr
    availability_zone = "${var.region}b"
    vpc_id = aws_vpc.ntier.id
    depends_on = [
        aws_vpc.ntier
    ]
}