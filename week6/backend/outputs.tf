output "s3_bucket_arn" {
  value       = aws_s3_bucket.mys3bucket.arn
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.mydynamodbtable.name
}
