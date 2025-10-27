terraform {
  required_providers {
  aws = {
    source = "hashicorp/aws"
    version = "~>6.0"
    }
  }
  required_version = "~>1.1"
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::224231896688:role/terraform_build"
  }
}

