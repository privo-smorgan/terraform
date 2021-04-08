resource "aws_s3_bucket" "steves_terraform_bucket" {
  bucket = var.BUCKETNAME
  acl    = "private"

  tags = {
    Name        = var.BUCKETNAME
    Environment = "Sandbox"
  }
}

