resource "aws_vpc" "web" {
  cidr_block = var.cidr_vpc

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "sb-main" {
  vpc_id     = aws_vpc.web.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = var.sb_name
  }
}


resource "aws_security_group" "sg" {
  name   = "web"
  vpc_id = aws_vpc.web.id

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}