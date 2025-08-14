resource "aws_security_group" "sg" {
  name        = var.sg_name
  vpc_id      = var.vpc_id
  description = "security group for ${var.sg_name}"
}
resource "aws_vpc_security_group_ingress_rule" "ingress_rule" {
  security_group_id = var.sg_id
  ip_protocol       = var.ip_protocol
  from_port         = var.from_port
  to_port           = var.to_port
}
