terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
  required_version = "~>1.1"
}

provider "aws" {
  region     = us-east-1
  access_key = "$AWS_ACCESS_KEY"
  secret_key = "$AWS_SECRET_VALUE"
}
