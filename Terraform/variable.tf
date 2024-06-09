variable "aws_region" {
  description = "The AWS region to create resources"
  default     = "eu-west-1"
}

variable "aws_ecr_repository" {
  description = "The name of the ECR repository"
  default     = "my-ecr-cantaso-repo"
}
