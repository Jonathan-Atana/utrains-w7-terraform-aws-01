terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "-> 5.0.0"
    }
  }

  backend "s3" {
    bucket       = var.bucket
    key          = "dev/w7-vpc/terraform.tfstate"
    region       = var.region
    use_lockfile = true
  }
}

provider "aws" {
  region = var.region
}