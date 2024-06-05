resource "aws_codebuild_project" "code_build_aws_cantaso" {
    name = var.codebuild_project_name
    description = "CodeBuild for Cantaso app"
    build_timeout = 5

    source {
      type = "GITHUB"
      location = var.github_repo_url
      git_clone_depth = 1
    }

    environment {
      compute_type = ""
      image = ""
      type = ""
      image_pull_credentials_type = ""
    }
    artifacts {
      type = "NO_ARTIFACTS"
    }
    service_role = ""
}

resource "aws_iam_role" "codebuild_cantaso_role" {
    name = ""
    assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "codebuild.amazonaws.com"
        }
      }
    ]
  })
  
}