resource "aws_vpc" "elk_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name  = "elk-vpc"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.elk_vpc.id

  tags = {
    Name = "main-ig"
  }
}

resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet1.id

  tags = {
    Name = "nat-gw"
  }
}