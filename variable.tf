variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "ecs_cluster_name" {
  default = "my-ecs-cluster"
}

variable "subnet_ids" {
  description = "Subnet Lists for Containers"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC Id for Networking"
  type = string
}





