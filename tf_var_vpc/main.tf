
resource "aws_vpc" "ntier" {
    cidr_block = var.ntier-vpc-range
    tags = {
        Name = "ntier-1"
    }
}    

# configure