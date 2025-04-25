variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

#Variable for Single Repository
variable "repository_name" {
  description = "ECR repository name"
  type        = string
}

/*variable "ecr_repositories" {
  description = "List of ECR repository names to create"
  type        = list(string)
  //default     = ["app-frontend", "app-backend", "worker-service"]
}*/




