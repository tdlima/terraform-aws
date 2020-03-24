data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = var.image_ubt
  }

  owners = var.owners_ubt
}

resource "aws_instance" "web-server" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.type
  key_name                    = "webapp"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.sb-main.id

  tags = {
    Name = var.name_ubt
  }
}

