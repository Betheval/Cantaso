resource "aws_ecr_repository" "my_ecr_cantaso_repo" {
  name = var.aws_ecr_repository
  image_scanning_configuration {
    scan_on_push = false
  }
}
