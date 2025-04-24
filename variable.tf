variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-2"
}

variable "ecs_cluster_name" {
  default = "my-ecs-cluster"
}

variable "subnet_ids" {
  description = "EC2 Subnet Id"
  type = list(string)
}




