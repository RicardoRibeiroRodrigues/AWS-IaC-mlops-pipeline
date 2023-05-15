output "HTTP_Clone_URL_Build" {
  value = aws_codecommit_repository.build.clone_url_http
}

output "HTTP_Clone_URL_Deploy" {
  value = aws_codecommit_repository.deploy.clone_url_http
}

output "mirror_url_build" {
  value = "https://${aws_iam_service_specific_credential.git_credentials.service_user_name}@git-codecommit.${var.aws_region}.amazonaws.com/v1/repos/${aws_codecommit_repository.build.repository_name}"
}

output "mirror_url_deploy" {
  value = "https://${aws_iam_service_specific_credential.git_credentials.service_user_name}@git-codecommit.${var.aws_region}.amazonaws.com/v1/repos/${aws_codecommit_repository.deploy.repository_name}"
}

output "mirror_git_password" {
  value = aws_iam_service_specific_credential.git_credentials.service_password
  sensitive = true
}
