terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.35.0" // Allow 4.35.x , not 4.36.0
    }
  }
}
provider "aws" {
    region = "ap-northeast-2"
    profile = "isnt"
}

resource "aws_iam_user" "devops" {
  count = length(var.username)
  name = var.username[count.index]
}

output "iam_result"{
  value = [for name in var.username : name]
}