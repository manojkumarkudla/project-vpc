resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.private_subnet1_cidr
  availability_zone = "eu-west-1a"

  tags = {
    Name = "private-subnet1"
  }

}

resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.private_subnet2_cidr
  availability_zone = "eu-west-1a"

  tags = {
    Name = "private-subnet2"
  }

}

resource "aws_subnet" "private_subnet3" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.private_subnet3_cidr
  availability_zone = "eu-west-1b"

  tags = {
    Name = "private-subnet3"
  }

}
resource "aws_subnet" "private_subnet4" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.private_subnet4_cidr
  availability_zone = "eu-west-1c"

  tags = {
    Name = "private-subnet4"
  }

}

resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.public_subnet1_cidr
  availability_zone = "eu-west-1a"

  tags = {
    Name = "public-subnet1"
  }

}


# resource "aws_subnet" "public_subnet3" {
#   vpc_id     = aws_vpc.main_vpc.id
#   cidr_block = var.public_subnet3_cidr
#   availability_zone = "eu-west-1c"

#   tags = {
#     Name = "public-subnet3"
#   }

# }
