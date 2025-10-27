resource "aws_s3_bucket" "terraform_backend" {
  bucket = "terraform_backend_testado"

  tags = {
    Environment = "Development"
    Project     = "adopractice"
  }
}

resource "aws_s3_bucket_versioning" "terraform_backend" {
  bucket = aws_s3_bucket.my_encrypted_versioned_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_backend" {
  bucket = aws_s3_bucket.my_encrypted_versioned_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
