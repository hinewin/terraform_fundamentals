terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_repository" "terraform_playground" {
  name        = "terraform_playground"
  description = "Playground for Terraform testing"

  visibility             = "public"
  delete_branch_on_merge = true
}