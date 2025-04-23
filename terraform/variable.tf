variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "repository_name" {
  description = "ECR repository name"
  type        = string
}

variable "ami" {
  description = "EC2 AMI ID"
  type = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
}

variable "subnet_id" {
  description = "EC2 Subnet Id"
  type = string
}



