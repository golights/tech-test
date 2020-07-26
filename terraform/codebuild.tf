resource "aws_codebuild_source_credential" "tech-test" {
  auth_type   = "PERSONAL_ACCESS_TOKEN"
  server_type = "GITHUB"
  token       = var.github_access_token
}

resource "aws_codebuild_webhook" "tech-test" {
  project_name = var.aws_codebuild_project.example.name

  filter_group {
    filter {
      type    = "EVENT"
      pattern = "PUSH"
    }

    filter {
      type    = "HEAD_REF"
      pattern = "master"
    }
  }
}

resource "aws_iam_service_linked_role" "codebuild" {
  aws_service_name = "codebuild.amazonaws.com"
}

