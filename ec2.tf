data "aws_ami" "ubuntu" {
  most_recent   = true

  filter {
    name    = "name"
    values  = ["${var.image_ubt}"]
  }

  owners    = ["${var.owners_ubt}"]
}

data "aws_ami" "amazon" {
  most_recent   = true

  filter {
    name    = "name"
    values  = ["${var.image_amz}"]
  }

  owners    = ["${var.owners_amz}"]
}


resource "aws_instance" "web-server" {
  ami            = data.aws_ami.ubuntu.id
  instance_type  = var.type

  tags = {
      Name  = var.name_ubt
  }
}

resource "aws_instance" "app-server" {
  count          = 2
# provider       = aws.west2
  ami            = data.aws_ami.amazon.id
  instance_type  = var.type

  tags = {
      Name  = var.name_amz
  }
}

