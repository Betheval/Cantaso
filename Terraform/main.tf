resource "aws_codebuild_project" "code_build_aws_cantaso" {
  name          = var.codebuild_project_name
  description   = "CodeBuild for Cantaso app"
  build_timeout = 5

  source {
    type            = "GITHUB"
    location        = var.github_repo_url
    git_clone_depth = 1
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/amazonlinux2-x86_64-standard:4.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"
  }
  artifacts {
    type = "NO_ARTIFACTS"
  }
  service_role = aws_iam_role.codebuild_iamrole_cantaso.arn
}
resource "aws_iam_role" "codebuild_iamrole_cantaso" {
  name = "codebuild_service_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "codebuild.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "codebuild_service_role_attach" {
  role       = aws_iam_role.codebuild_iamrole_cantaso.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildDeveloperAccess"
}
