variable "aws_region" {
  description = "The AWS region to create resources"
  default     = "eu-west-1"
}
variable "github_repo_url" {
  description = "The URL of the GitHub Repo"
  default     = "https://github.com/Betheval/Cantaso"

}
variable "codebuild_project_name" {
  description = "The name of the codebuild project"
  default     = "codebuild_cantaso"

}
