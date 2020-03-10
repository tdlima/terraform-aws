output "ip_addr1" {
  value       = "${aws_instance.web-server.public_ip}"
}

output "ip_addr2" {
  value       = "${aws_instance.app-server[*].public_ip}"
}