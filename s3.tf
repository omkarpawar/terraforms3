resource "random_pet" "bucket_name" {
  length = 2
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-${random_pet.bucket_name.id}"
  acl    = "private"

  tags = {
    Environment = "dev"
  }
}
