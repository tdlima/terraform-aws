resource "aws_instance" "web-server" {

  ami           = "ami-0e38b48473ea57778"
  instance_type  = "t2.micro"

  tags = {
      Name  = "web-server"
  }
}
