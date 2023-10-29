# Recurso para buscar o security group default
data "aws_security_group" "default" {
  filter {
    name   = "group-name"
    values = ["default"]
  }
}

# Recurso para liberar o acesso a porta 80
resource "aws_security_group_rule" "ingress_tcp_80" {
  security_group_id = data.aws_security_group.default.id
  type              = "ingress"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 80
  to_port           = 80
}

# Recurso para liberar o acesso a porta 22
resource "aws_security_group_rule" "ingress_tcp_22" {
  security_group_id = data.aws_security_group.default.id
  type              = "ingress"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  to_port           = 22
}