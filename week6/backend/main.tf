provider "aws" {
  region = "ap-northeast-2"
  profile = "isnt"
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = "isnt-week6-files"
}

resource "aws_s3_bucket_versioning" "mys3bucket_versioning" {
  bucket = aws_s3_bucket.mys3bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "mydynamodbtable" {
  name         = "terraform-locks-week6-files"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
