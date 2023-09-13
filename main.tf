resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  user_data     = var.user_data
  subnet_id     = var.subnet[0]

  tags = {
    Name = "${var.instance_name}"
  }
}
