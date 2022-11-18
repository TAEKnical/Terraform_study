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
  count = length(var.devops)
  name = var.devops[count.index]
}

resource "aws_iam_user" "developer" {
  count = length(var.developer)
  name = var.developer[count.index]
}

output "for_directive_index_if" {
  value = <<EOF
%{ for name in var.devops }
  ${name}%{ if 1 < length(var.devops) }, %{ endif }
%{ endfor }

%{ for name in var.developer }
  ${name}%{ if 1 < length(var.developer) }, %{ endif }
%{ endfor }
EOF
}
