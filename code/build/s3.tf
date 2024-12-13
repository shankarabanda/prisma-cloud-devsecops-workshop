provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "756d3d87-95d9-44fd-b80d-0ca92a7aaf32"
    git_commit           = "feafe163cc4c849a39146866e38435b0319d2af1"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-13 02:08:24"
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
