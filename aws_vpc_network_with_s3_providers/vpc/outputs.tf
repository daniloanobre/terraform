output "vpc_id_default" {
  description = "VPC id from default region"
  value       = aws_vpc.default.id
}

output "vpc_id_provider_1" {
  description = "VPC id from provider_1 region"
  value       = aws_vpc.provider_1.id
}

output "vpc_id_provider_2" {
  description = "VPC id from provider_2 region"
  value       = aws_vpc.provider_2.id
}