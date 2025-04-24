provider "aws" {
  region = var.aws_region
}

#To add singel ECR Repository
//resource "aws_ecr_repository" "my_ecr_repo" {
  //name                 = var.repository_name
  //image_tag_mutability = "MUTABLE"
//}

# To add multiple ECR Repositories
resource "aws_ecr_repository" "repos" {
  for_each = toset(var.ecr_repositories)

  name = each.value

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}


