#Instancia EC2
variable "image_ubt" {
  description = "AMI de imagem ubuntu"
  default     = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20200112"]
}

#imagem ubuntu
variable "owners_ubt" {
  description = "Proprietario da imagem"
  default     = ["099720109477"]
}
#imagem ubuntu
variable "name_ubt" {
  description = "Nome da Instancia"
  default     = "web-server"
}

variable "type" {
  description = "Tipo da Instancia"
  default     = "t2.micro"
}

variable "cidr_vpc" {
  description = "Blocos de Ips da rede"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nome da VPC"
  default     = "web-main"
}

variable "sg_name" {
  description = "Nome do Security Group"
  default     = "sg-web"
}

variable "sb_name" {
  description = "Nome do Security Group"
  default     = "sb-web"
}