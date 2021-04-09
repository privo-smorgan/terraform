data "template_file" "shell-script" {
  template = file("scripts/init.sh")
}

data "template_cloudinit_config" "SMorganEC2Bootstrap" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.shell-script.rendered
  }
}

resource "aws_instance" "SMorganEC2Generic" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  

  tags = var.TAGS_EC2

  # the public SSH key
  key_name = aws_key_pair.mykey.key_name

  # user data
  user_data = data.template_cloudinit_config.SMorganEC2Bootstrap.rendered
}