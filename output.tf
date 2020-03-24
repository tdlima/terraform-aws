output "ip_addr1" {
  value = "${aws_instance.web-server.public_ip}"
}

output "ip_addr2" {
  value = "${aws_instance.app-server.public_ip}"
}

output "ami1" {
  value = "${aws_instance.web-server.ami}"
}

output "ami2" {
  value = "${aws_instance.app-server.ami}"
}

output "vpc_id" {
  value = "${aws_instance.web-server.vpc_id}"
}