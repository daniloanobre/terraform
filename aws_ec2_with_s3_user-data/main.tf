terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.47.0"
    }
  }

  backend "s3" {
    bucket = "daniloanobre-remote-state"
    key    = "aws-vm-user-data/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.profile

  default_tags {
    tags = {
      owner      = "Danilo Assis"
      managed-by = "Terraform"
    }
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.bucket_name
    key    = "aws-vpc/terraform.tfstate"
    region = var.aws_region
  }
}