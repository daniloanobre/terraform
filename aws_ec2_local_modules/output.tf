output "vm_ip" {
  description = "AWS VM Public IP"
  value       = aws_instance.vm.public_ip
}