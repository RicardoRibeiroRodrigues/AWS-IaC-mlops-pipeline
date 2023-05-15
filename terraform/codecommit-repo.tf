resource "aws_codecommit_repository" "build" {
  repository_name = var.build_repository_name
  description     = "Repository for model build pipeline"
}

resource "aws_codecommit_repository" "deploy" {
  repository_name = var.deploy_repository_name
  description     = "Repository for model deploy pipeline"
}