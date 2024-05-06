terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.47.0"
    }
  }

  backend "s3" {
    bucket = "daniloanobre-remote-state"
    key    = "aws-vm-local-modules/terraform.tfstate"
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

module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.0.0/24"
  environment = var.environment
}