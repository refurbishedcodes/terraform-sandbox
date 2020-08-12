terraform {
  required_version = "0.12.29"

  required_providers {
    aws    = "3.0.0"
    github = "2.9.2"
  }

  backend "s3" {
    bucket = "infracodegang-remote-state-dev"
    key    = "dev/deployment/terraform.state"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  profile = var.profile
  region  = var.region
  version = "3.0.0"
}

provider "github" {
  organization = var.github_organization
  version      = "2.9.2"
}