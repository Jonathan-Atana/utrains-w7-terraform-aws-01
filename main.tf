// vpc code
resource "aws_vpc" "vpc1" {
  cidr_block           = "172.120.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "utc-app-vpc"
    env  = "Dev"
    Team = "DevOps"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "gtw1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "utc-app"
    env  = "Dev"
    Team = "DevOps"
  }
}

# Public Subnets
resource "aws_subnet" "pub-sub1" {
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = "172.120.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-sub-useast-1a"
  }
}

resource "aws_subnet" "pub-sub2" {
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = "172.120.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Name = "public-sub-useast-1b"
  }
}

# Private Subnets
resource "aws_subnet" "priv-sub1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = "172.120.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private-sub-useast-1a"
  }
}

resource "aws_subnet" "priv-sub2" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = "172.120.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private-sub-useast-1b"
  }
}

# Nat Gateway
resource "aws_eip" "eip1" { // define the elastic IP address

}

resource "aws_nat_gateway" "nat-gtw1" {
  subnet_id     = aws_subnet.pub-sub1.id
  allocation_id = aws_eip.eip1.id

  tags = {
    Name = "Nat Gateway"
    env  = "Dev"
  }
}

// Private route table
resource "aws_route_table" "priv-rt" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat-gtw1.id
  }
}

// Public route table
resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.vpc1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gtw1.id
  }
}

# Private route table association
resource "aws_route_table_association" "priv-rta1" {
  subnet_id      = aws_subnet.priv-sub1.id
  route_table_id = aws_route_table.priv-rt.id
}

resource "aws_route_table_association" "priv-rta2" {
  subnet_id      = aws_subnet.priv-sub2.id
  route_table_id = aws_route_table.priv-rt.id
}

# Public route table association
resource "aws_route_table_association" "pub-rta1" {
  subnet_id      = aws_subnet.pub-sub1.id
  route_table_id = aws_route_table.pub-rt.id
}

resource "aws_route_table_association" "pub-rta2" {
  subnet_id      = aws_subnet.pub-sub2.id
  route_table_id = aws_route_table.pub-rt.id
}