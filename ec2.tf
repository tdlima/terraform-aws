data "aws_ami" "ubuntu" {
  most_recent   = true

  filter {
    name    = "name"
    values  = ["${var.image_ubt}"]
  }

  owners    = ["${var.owners_ubt}"]
}

data "aws_ami" "ubuntu-xen" {
  most_recent   = true

  filter {
    name    = "name"
    values  = ["${var.image_xen}"]
  }

  owners    = ["${var.owners_xen}"]
}


resource "aws_instance" "web-server" {
  ami            = "${data.aws_ami.ubuntu.id}"
  instance_type  = var.type

  tags = {
      Name  = var.name_ubt
  }
}

resource "aws_instance" "app-server" {
  count          = 2
#  provider       = aws.east1
  ami            = "${data.aws_ami.ubuntu-xen.id}"
  instance_type  = var.type

  tags = {
      Name  = var.name_xen
  }
}

