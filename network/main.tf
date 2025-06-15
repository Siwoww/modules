resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  map_public_ip_on_launch = true #aggiunto da gpt
}

resource "aws_internet_gateway" "main_gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = var.gw_name
  }
}

resource "aws_route_table" "main_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.main_gw.id
  }

  tags = {
    Name = var.route_name
  }
}

resource "aws_route_table_association" "main_assoc" {
  subnet_id = aws_subnet.main.id
  route_table_id = aws_route_table.main_route.id
}