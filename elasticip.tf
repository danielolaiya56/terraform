resource "aws_eip" "nat" {
  domain = "vpc"
  tags   = { Name = "terraformassigment nat-gatwaty-eip" }
}
