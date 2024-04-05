resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.pub_sub_01_id

  tags = {
    Name = "${var.name}-ec2"
  }
}