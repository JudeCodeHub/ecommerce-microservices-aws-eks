terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.25.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.4.0"
    }
  }

  backend "s3" {
    bucket = "mj-tfstate-bucket-1"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.6.3"
}
provider "aws" {
  region = "us-east-1"
}
