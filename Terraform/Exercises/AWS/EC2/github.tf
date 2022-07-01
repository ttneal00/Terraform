terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.26.1"
    }
  }
}
/*
provider "github" {
token = "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"
}

resource "github_repository" "example" {
  name        = "example"
  visibility = "private"

  template {
    owner      = "github"
    repository = "terraform-module-template"
  }
}
*/
