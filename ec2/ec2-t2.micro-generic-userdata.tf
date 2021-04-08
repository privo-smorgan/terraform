data "template_file" "init-script" {
  template = file("scripts/init.cfg")
  vars = {
    REGION = var.AWS_REGION
  }
}

data "template_cloudinit_config" "cloudinit-example" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "init.cfg"
    content_type = "text/cloud-config"
    content      = data.template_file.init-script.rendered
  }

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.shell-script.rendered
  }
}

resource "aws_instance" "SMorganEC2Generic" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
  

  tags = {
    Name        = "steves_ec2"
    Environment = "Sandbox"
  }

  # the public SSH key
  key_name = aws_key_pair.mykey.key_name

  # user data
  user_data = data.template_cloudinit_config.cloudinit-example.rendered
}