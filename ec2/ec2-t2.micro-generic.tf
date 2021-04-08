resource "aws_instance" "SMorganEC2Generic" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  

  tags = {
    Name        = "steves_ec2"
    Environment = "Sandbox"
  }

  # the public SSH key
  key_name = aws_key_pair.mykey.key_name
}