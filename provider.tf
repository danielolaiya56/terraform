terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.31.0"
    }
  }

  cloud {
    organization = "swaggerxxl"
    workspaces {
      name = "dev-aws-infrastructure"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}