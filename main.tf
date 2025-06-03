/**
 * # Description
 *
 * This module Creates 2 public and private subnets, a VPC, an internet gateway, route tables, a nat gateway, a security group, an EC2 instance and a keypair.
 *
 * - The public and private subnets are created in the VPC
 * - The Security (associated with the VPC) group allows SSH, HTTP, HTTPS, and outbound traffic
 * - The EC2 instance is associated to the keypair, the security group and created in the public subnet
 *
 * The instance runs some user data to install apache and other packages
 *
 * ## Usage
 *
 * To use this configuration, ensure you have the necessary AWS credentials set up and run:
 *
 * ```bash
 * terraform init
 * terraform plan
 * terraform apply
 * ```
 *
 * ---
 */

// vpc code
resource "aws_vpc" "main" {
  cidr_block           = "172.120.0.0/16"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "${var.project_prefix}_vpc"
    env  = var.env
    Team = local.team
  }
}

# Internet Gateway
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.project_prefix}_igw"
    env  = var.env
    Team = local.team
  }
}

# Public Subnets
resource "aws_subnet" "pub_sub1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "172.120.1.0/24"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = "${local.pub_sub_name}a"
  }
}

resource "aws_subnet" "pub_sub2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "172.120.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}b"

  tags = {
    Name = "${local.pub_sub_name}b"
  }
}

# Private Subnets
resource "aws_subnet" "priv_sub1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.120.3.0/24"
  availability_zone = "${var.region}a"

  tags = {
    Name = "${local.priv_sub_name}a"
  }
}

resource "aws_subnet" "priv_sub2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.120.4.0/24"
  availability_zone = "${var.region}b"

  tags = {
    Name = "${local.priv_sub_name}b"
  }
}

# Nat Gateway
resource "aws_eip" "main" { // define the elastic IP address

}

resource "aws_nat_gateway" "main" {
  subnet_id     = aws_subnet.pub_sub1.id
  allocation_id = aws_eip.main.id

  tags = {
    Name = "Nat Gateway"
    env  = var.env
  }
}

// Private route table
resource "aws_route_table" "priv_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.main.id
  }
}

// Public route table
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
}

# Private route table association
resource "aws_route_table_association" "priv_rta1" {
  subnet_id      = aws_subnet.priv_sub1.id
  route_table_id = aws_route_table.priv_rt.id
}

resource "aws_route_table_association" "priv_rta2" {
  subnet_id      = aws_subnet.priv_sub2.id
  route_table_id = aws_route_table.priv_rt.id
}

# Public route table association
resource "aws_route_table_association" "pub_rta1" {
  subnet_id      = aws_subnet.pub_sub1.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "pub_rta2" {
  subnet_id      = aws_subnet.pub_sub2.id
  route_table_id = aws_route_table.pub_rt.id
}