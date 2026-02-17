resource "aws_security_group" "ec2_public_sg" {
  name        = "terraform-assignment-ec2-public-sg"
  description = "Allow SSH from your IP + HTTP from anywhere + all outbound"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "SSH from my IP only (terraformcli)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]          
  }

  ingress {
    description = "HTTP from anywhere (for web server demo)"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-assignment-ec2-sg"
  }
}