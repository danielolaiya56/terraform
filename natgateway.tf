resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_az1.id # Must be a public subnet
  
  tags = { Name = "main-nat-gateway" }

  # Recommended: wait for Internet Gateway to be ready
  depends_on = [aws_internet_gateway.main] 
}