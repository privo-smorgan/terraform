resource "aws_s3_bucket" "steves_terraform_bucket" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "steves_terraform_bucket"
    Environment = "Sandbox"
  }
}