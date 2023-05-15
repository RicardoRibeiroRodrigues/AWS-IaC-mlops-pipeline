terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.65.0"
    }
  }
}

# Provider configuration
provider "aws" {
  region = var.aws_region
}

