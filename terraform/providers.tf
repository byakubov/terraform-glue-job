terraform {
  required_version = ">= 1.8.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.30.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "bob-yakub-uploads"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}