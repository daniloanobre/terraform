output "bucket_id" {
  description = "AWS Bucket id"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "AWS Bucket arn"
  value       = aws_s3_bucket.bucket.arn
}