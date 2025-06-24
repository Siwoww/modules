output "bucket" {
  value = aws_s3_bucket.remote_statefile_s3_bucket.bucket
}

output "region" {
  value = aws_s3_bucket.remote_statefile_s3_bucket.region
}