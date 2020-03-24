resource "aws_vpc" "web" {
  cidr_block = var.cidr_vpc
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_security_group" "sg" {
  vpc_id = "${aws_vpc.web.id}"
  ingress {
    from_port  = "443"
    to_port    = "443"
    protocol   = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }

  ingress {
    from_port  = "80"
    to_port    = "80"
    protocol   = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }

  ingress {
    from_port  = "22"
    to_port    = "22"
    protocol   = "tcp"
    cidr_block = ["0.0.0.0/0"]
  }

  egress {
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}