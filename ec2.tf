resource "aws_instance" "web_server" {
  ami           = "ami-0b6c6ebed2801a5cb" # Ubuntu 22.04 in us-east-1
  instance_type = "t2.micro"

  # Attach the components we created above
  key_name               = "demoinstancekey"
  vpc_security_group_ids = [aws_security_group.ec2_public_sg.id]
  subnet_id              = aws_subnet.public_az1.id  # Puts it in your first public subnet

  tags = {
    Name = "Terraform-EC2"
  }
}


resource "aws_instance" "private_server" {
  ami           = "ami-0b6c6ebed2801a5cb" # Ubuntu 22.04 in us-east-1
  instance_type = "t2.micro"

  # Attach the components we created above
  key_name               = "demoinstancekey"
  vpc_security_group_ids = [aws_security_group.ec2_public_sg.id]
  subnet_id              = aws_subnet.private_az1.id  # Puts it in your first public subnet

  tags = {
    Name = "Terraform_privaet-EC2"
  }
}

