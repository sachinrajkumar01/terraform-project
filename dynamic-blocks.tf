resource "aws_security_group" "MySG" {

  name        = "dynamic_SG"
  description = "ports for inbound rules"


  dynamic "ingress" {
    for_each = var.SG-ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }

  dynamic "egress" {
    for_each = var.SG-ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }


}


