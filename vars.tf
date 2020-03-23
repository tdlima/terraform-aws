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
#imagem amazon-linux
variable "image_amz" {
  description = "AMI de imagem Amazon-linux"
  default     = ["amzn2-ami-hvm-2.0.20200207.1-x86_64-gp2"]
}

#imagem amazon-linux
variable "owners_amz" {
  description = "Proprietario da imagem"
  default     = ["amazon"]
}
#imagem amazon-linux
variable "name_amz" {
  description = "Nome da Instancia"
  default     = "app-server"
}

variable "type" {
  description = "Tipo da Instancia"
  default     = "t2.micro"
}