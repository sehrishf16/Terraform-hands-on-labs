resource "aws_vpc" "my-vpc1" {
  cidr_block = var.my_vpc
  tags = {
    Name = "my-vpc1"
  }
}

resource "aws_subnet" "my-subnet" {
  vpc_id     = aws_vpc.my-vpc1.id
  cidr_block = var.my_subnet
  tags = {
    Name = "my-subnet"
  }
}





