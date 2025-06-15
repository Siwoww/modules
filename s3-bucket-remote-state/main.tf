resource "aws_s3_bucket" "main" {
  bucket = "siwoww-test-bucket-001"
  tags = {
    Name = var.bucket_name
    Environment = var.environment
  }
}