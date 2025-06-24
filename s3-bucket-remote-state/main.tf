resource "aws_s3_bucket" "remote_statefile_s3_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
  }
}