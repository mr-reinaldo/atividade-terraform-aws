# Variavel de ambiente para definir a região da AWS.
variable "region" {
  description = "Define a região da AWS"
  default     = "us-east-2"
}

# Variavel de ambiente para definir o nome da aplicação.
variable "name" {
  description = "Nome da aplicação"
  default     = "server01"
}

# Variavel de ambiente para definir o ambiente da aplicação.
variable "env" {
  description = "Ambiente da aplicação"
  default     = "prod"
}

# Variavel de ambiente para definir o tipo de instância de hardware da máquina virtual.
variable "instance_type" {
  description = "Tipo de instância que define o hardware da máquina virtual"
  default     = "t2.micro"
}

# Variavel de ambiente para definir o repositório da aplicação.
variable "repo" {
  description = "Repositório da aplicação"
  default     = "githun.com/mr-reinaldo/terraform-aws"

}