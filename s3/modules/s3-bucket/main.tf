terraform {
  required_version = ">= 0.12"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.BUCKETNAME
  acl    = var.ACL

  tags = {
    Name        = var.BUCKETNAME
    Environment = var.ENVIRONMENT
  }
}