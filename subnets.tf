  data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 2)
}

# Public Subnet AZ1 – 10.0.0.0/23 (512 IPs)
resource "aws_subnet" "public_az1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/23"
  availability_zone       = local.azs[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "terraform-assignment-public-az1"
  }
}

# Public Subnet AZ2 – 10.0.2.0/23 (512 IPs)
resource "aws_subnet" "public_az2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/23"
  availability_zone       = local.azs[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "terraform-assignment-public-az2"
  }
}

# Private Subnet AZ1 – 10.0.4.0/23 (512 IPs)
resource "aws_subnet" "private_az1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/23"
  availability_zone = local.azs[0]

  tags = {
    Name = "terraform-assignment-private-az1"
  }
}

# Private Subnet AZ2 – 10.0.6.0/23 (512 IPs)
resource "aws_subnet" "private_az2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.6.0/23"
  availability_zone = local.azs[1]

  tags = {
    Name = "terraform-assignment-private-az2"
  }
}