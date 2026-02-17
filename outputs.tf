output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "public_subnet_ids" {
  value       = [aws_subnet.public_az1.id, aws_subnet.public_az2.id]
  description = "Public subnet IDs"
}

output "private_subnet_ids" {
  value       = [aws_subnet.private_az1.id, aws_subnet.private_az2.id]
  description = "Private subnet IDs"
}

output "igw_id" {
  value       = aws_internet_gateway.main.id
  description = "Internet Gateway ID"
}