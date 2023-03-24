provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "myexample-bucket"
  acl = "private"

  tags = {
    Name = "My Example Bucket"
  }
}

output "bucket_id" {
  value = aws_s3_bucket.example_bucket.id
}

