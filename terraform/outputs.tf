# outputs.tf

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.jenkins.id
}

output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.jenkins.public_ip
}

output "public_dns" {
  description = "The public DNS of the EC2 instance"
  value       = aws_instance.jenkins.public_dns
}