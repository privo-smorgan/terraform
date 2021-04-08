resource "aws_instance" "SMorganEC2Generic" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
  

  tags = {
    Name        = "steves_ec2"
    Environment = "Sandbox"
  }

  # the public SSH key
  key_name = aws_key_pair.mykey.key_name
}