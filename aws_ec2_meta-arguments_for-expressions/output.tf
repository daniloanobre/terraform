output "vm_ips" {
  description = "AWS VM Public IP"
  value       = [for instance in aws_instance.vm : instance.public_ip]
}