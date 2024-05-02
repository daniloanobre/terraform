output "subnet_id" {
  description = "AWS Subnet id"
  value       = aws_subnet.subnet.id
}

output "security_group_id" {
  description = "AWS Security group Id"
  value       = aws_security_group.security_group.id
}