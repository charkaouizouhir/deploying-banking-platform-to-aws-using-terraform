resource "aws_security_group" "sg" {
  name = var.sg_name
  vpc_id = var.vpc_id
  description = "security group for ${var.sg_name}"
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port =ingress.value["from_port"]
      to_port = ingress.value["to_port"]
      protocol = ingress.value["protocol"]
      cidr_blocks = ingress.value["cid_blocs"]
    }
    
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}