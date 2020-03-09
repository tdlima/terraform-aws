#Instancia EC2
variable "image_ubt" {
  description   = "AMI de imagem ubuntu"
  default       = "ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-20200112"
}

#imagem ubuntu
variable "owners_ubt" {
  description   = "Proprietario da imagem"
  default       = "099720109477"
}
#imagem ubuntu
variable "name_ubt" {
  description   = "Nome da Instancia"
  default       = "web-server"
}
#imagem ubuntu-xen
variable "image_xen" {
  description   = "AMI de imagem ubuntu-xenial"
  default       = "ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-20200129"
}

#imagem ubuntu-xen
variable "owners_xen" {
  description   = "Proprietario da imagem"
  default       = "099720109477"
}
#imagem amazon-linux
variable "name_xen" {
  description   = "Nome da Instancia"
  default       = "app-server"
}

variable "type" {
  description   = "Tipo da Instancia"
  default       = "t2.micro"
}