variable "region" {
  description = "Define a região da AWS"
  default     = "us-east-2"
}

variable "name" {
  description = "Nome da aplicação"
  default     = "server01"
}

variable "env" {
  description = "Ambiente da aplicação"
  default     = "prod"
}

variable "instance_type" {
  description = "Tipo de instância que define o hardware da máquina virtual"
  default     = "t2.micro"
}

variable "repo" {
  description = "Repositório da aplicação"
  default     = "githun.com/mr-reinaldo/terraform-aws"

}