provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-1234567890"  # must be globally unique
  force_destroy = true

  tags = {
    Name        = "ExampleBucket"
    Environment = "Dev"
  }
}
