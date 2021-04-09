terraform {
    required_version = ">= 0.12"
}

resource "aws_instance" "EC2Generic01" {
  ami           = var.AMI
  instance_type = var.INSTANCETYPE
  

  tags = {
      Name = var.EC2NAME
      Environment = var.ENVIRONMENT
  }
}