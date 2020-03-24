output "ip_addr" {
  value = "${aws_instance.web-server.public_ip}"
}

output "ami" {
  value = "${aws_instance.web-server.ami}"
}

output "vpc_id" {
  value = "${aws_vpc.web.id}"
}

output "sbnet_id" {
  value = "${aws_subnet.sb-main.id}"
}