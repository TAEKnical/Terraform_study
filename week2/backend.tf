terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.35.0" // Allow 4.35.x , not 4.36.0
    }
  }
  backend "s3" {
    bucket = "kyle-t101study-tfstate"
    key    = "terraform-backend/terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "terraform-locks"
    profile = "isnt"
  }
}

# resource "aws_s3_bucket" "backendS3" {
#   bucket = "kyle-t101study-tfstate"
# }

# resource "aws_s3_bucket_versioning" "backendS3_versioning" {
#   bucket = aws_s3_bucket.backendS3.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_dynamodb_table" "backendDynamo" {
#   name         = "terraform-locks"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }

# output "s3_bucket_arn" {
#   value       = aws_s3_bucket.backendS3.arn
#   description = "The ARN of the S3 bucket"
# }

# output "dynamodb_table_name" {
#   value       = aws_dynamodb_table.backendDynamo.name
#   description = "The name of the DynamoDB table"
# }