provider "aws" {
  region  = var.region
}

provider "random" {
  version = "~> 3.0.0"
}

provider "template" {
  version = "~> 2.2.0"
}

# terraform {
#   cloud {
#     organization = "<your organization name>"

#     workspaces {
#       name = "<your workspace name>"
#     }
#   }
# }