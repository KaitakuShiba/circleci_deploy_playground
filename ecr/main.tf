resource "aws_ecr_repository" "nginx_ecr" {
  name                 = "nginx_ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
