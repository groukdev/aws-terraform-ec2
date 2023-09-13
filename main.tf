resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  user_data     = var.user_data

  tags = {
    Name = "${var.instance_name}"
  }
}
