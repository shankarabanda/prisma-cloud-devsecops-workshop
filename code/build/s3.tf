provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "raghav-dev-"

  tags = {
    Environment = "Dev"
    yor_name    = "dev_s3"
    yor_trace   = "279924a8-554f-42f7-9509-828b0c2b19af"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
