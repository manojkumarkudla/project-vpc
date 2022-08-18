resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.elk_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }
  tags = {
    Name = "public_route_table"
  }
}

# resource "aws_route_table" "public_subnet2_route_table" {
#   vpc_id = aws_vpc.main_vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet_gateway.id
#   }
#   tags = {
#     Name = "public_subnet2_route_table"
#   }
# }
# resource "aws_route_table" "public_subnet3_route_table" {
#   vpc_id = aws_vpc.main_vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet_gateway.id
#   }
#   tags = {
#     Name = "public_subnet3_route_table"
#   }
# }

resource "aws_route_table_association" "public_subnet1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}
# resource "aws_route_table_association" "public_subnet2" {
#   subnet_id      = aws_subnet.public_subnet2.id
#   route_table_id = aws_route_table.public_subnet2_route_table.id
# }
# resource "aws_route_table_association" "public_subnet3" {
#   subnet_id      = aws_subnet.public_subnet3.id
#   route_table_id = aws_route_table.public_subnet3_route_table.id
# }
#---------------------------------------------------------------------#

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.elk_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway.id
  }
  tags = {
    Name = "private_subnet1_route_table"
  }
}

# resource "aws_route_table" "private_subnet2_route_table" {
#   vpc_id = aws_vpc.main_vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet_gateway.id
#   }
#   tags = {
#     Name = "private_subnet2_route_table"
#   }
# }
# resource "aws_route_table" "private_subnet3_route_table" {
#   vpc_id = aws_vpc.main_vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet_gateway.id
#   }
#   tags = {
#     Name = "private_subnet3_route_table"
#   }
# }
# resource "aws_route_table" "private_subnet4_route_table" {
#   vpc_id = aws_vpc.main_vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.internet_gateway.id
#   }
#   tags = {
#     Name = "private_subnet4_route_table"
#   }
# }

resource "aws_route_table_association" "private_subnet1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private_subnet2" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private_subnet3" {
  subnet_id      = aws_subnet.private_subnet3.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_subnet4" {
  subnet_id      = aws_subnet.private_subnet4.id
  route_table_id = aws_route_table.private_route_table.id
}
