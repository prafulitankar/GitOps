provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "my_ecr_repo" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE"

}
