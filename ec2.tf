data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = var.image_ubt
  }

  owners = var.owners_ubt
}

data "aws_ami" "amazon" {
  provider    = aws.east2
  most_recent = true

  filter {
    name   = "name"
    values = var.image_amz
  }

  owners = var.owners_amz
}


resource "aws_instance" "web-server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.type
  key_name      = "webserver"

  tags = {
    Name = var.name_ubt
  }

  connection {
  type        = "ssh"
  user        = "ec2-user"
  host        = "${self.public_ip}"
  private_key = "${file("webserver.pem")}"
}
}

resource "aws_instance" "app-server" {
  provider      = aws.east2
  ami           = data.aws_ami.amazon.id
  instance_type = var.type

  tags = {
    Name = var.name_amz
  }
}

