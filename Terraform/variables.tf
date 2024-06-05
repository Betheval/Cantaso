variable "aws_region" {
  description = "The AWS region to create resources"
  default = ""
}
variable "github_repo_url" {
    description = "The URL of the GitHub Repo"
    default = ""
  
}
variable "codebuild_project_name" {
    description = "The name of the codebuild project"
    default = "codebuild_cantaso"
  
}