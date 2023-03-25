provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket-name2334345567"
  acl    = "private"

  tags = {
    Name        = "My Bucket"
    Environment = "Production"
  }
}
