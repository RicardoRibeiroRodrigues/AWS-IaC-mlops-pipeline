# Repository variables
variable "repository_branch" {
  description = "Repository branch to use in the pipeline"
  default     = "dev"
}

variable "env" {
  description = "Deployment environment"
  default     = "dev"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "build_repository_name" {
  description = "Build repository name"
  # Aqui fica o nome do repositório para o código do modelo
  default     = "model-build-pipeline"
}

variable "deploy_repository_name" {
  description = "Deploy repository name"
  default     = "model-deploy-pipeline"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "sagemaker-artifacts-pipeline-18345"
}


variable "project_name" {
  description = "Project name"
  default     = "aws-sagemaker-terraform-cicd"
}
variable "project_id" {
  description = "Project ID"
  default     = "10072022"
}