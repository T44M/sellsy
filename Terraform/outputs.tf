output "bucket_id" {
  description = "S3バケットのID"
  value       = aws_s3_bucket.my_bucket.id
}