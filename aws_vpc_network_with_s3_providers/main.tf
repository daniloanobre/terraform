terraform {
  required_version = "1.8.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }

  backend "s3" {
    bucket = "daniloanobre-remote-state"
    key    = "aws-providers/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf001"

  default_tags {
    tags = {
      owner      = "Danilo Assis"
      managed-by = "Terraform"
    }
  }
}

provider "aws" {
  alias = "brazil"

  region  = "sa-east-1"
  profile = "tf001"

  default_tags {
    tags = {
      owner      = "Danilo Assis"
      managed-by = "Terraform"
    }
  }
}

provider "aws" {
  alias   = "australia"
  region  = "ap-southeast-2"
  profile = "tf001"

  default_tags {
    tags = {
      owner      = "Danilo Assis"
      managed-by = "Terraform"
    }
  }
}

module "vpc" {
  providers = {
    aws.provider_1 = aws.brazil
    aws.provider_2 = aws.australia
  }

  source = "./vpc"
}
