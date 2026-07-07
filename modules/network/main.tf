resource "aws_vpc" "main" {

  cidr_block = var.vpc_cidr

  tags = {
    Name = "$(var.environment)-vpc"
  }
}

resource "aws_subnet" "public" {

  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "$(var.environment)-public-subnet"
  }
}


resource "aws_subnet" "private" {

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "$(var.environment)-private-subnet"
  }
}

