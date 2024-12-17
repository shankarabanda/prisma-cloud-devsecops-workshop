provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "raghav-dev-tfcloud"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "279924a8-554f-42f7-9509-828b0c2b19af"
    git_commit           = "f0477c4d3b1f790cb4f2e67778ad63352aea93d3"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-17 17:49:40"
    git_last_modified_by = "49386483+shankarabanda@users.noreply.github.com"
    git_modifiers        = "49386483+shankarabanda"
    git_org              = "shankarabanda"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
