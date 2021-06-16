terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

variable "token" {
  type = string
  description = "Github OAuth Token"
}

# Configure the GitHub Provider
provider "github" {
  token = var.token
}

resource "github_repository" "example_2" {
  name        = "example_2"
  description = "My awesome codebase"

  visibility = "private"
}
