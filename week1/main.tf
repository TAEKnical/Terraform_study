terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.35.0" // Allow 4.35.x , not 4.36.0
    }
  }
  backend "s3" {
    bucket = "jintaeleetfstate"
    key    = "terraform-backend/terraform.tfstate"
    region = "ap-northeast-2"
    profile = "isnt"
  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
}