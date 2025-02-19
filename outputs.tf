# outputs.tf

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web-1.id
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.web-1.public_ip
}

output "public_dns" {
  description = "The public DNS of the EC2 instance"
  value       = aws_instance.web-1.public_dns
}