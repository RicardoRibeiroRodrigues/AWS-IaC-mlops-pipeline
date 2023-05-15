resource "aws_codepipeline" "sm_ci_pipeline" {
  name     = "modelbuild-pipeline"
  role_arn = aws_iam_role.tf_mlops_role.arn
  tags = {
    Environment = var.env
  }

  artifact_store {
    location = aws_s3_bucket.artifacts_bucket.bucket
    type     = "S3"
  }

  stage {
    name = "Source"

    action {
      category = "Source"
      configuration = {
        RepositoryName         = var.build_repository_name
        BranchName             = var.repository_branch
        PollForSourceChanges   = true
      }

      input_artifacts = []
      name            = "Source"
      output_artifacts = [
        "SourceArtifact",
      ]
      owner     = "AWS"
      provider  = "CodeCommit"
      run_order = 1
      version   = "1"
    }
  }

  stage {
    name = "Build"

    action {
      category = "Build"
      configuration = {
        "ProjectName" = "tf-mlops-modelbuild"
      }
      input_artifacts = [
        "SourceArtifact",
      ]
      name = "Build"
      output_artifacts = [
        "BuildArtifact",
      ]
      owner     = "AWS"
      provider  = "CodeBuild"
      run_order = 1
      version   = "1"
    }
  }

}
