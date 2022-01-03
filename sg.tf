resource "aws_security_group" "allow_tls" {
  name        = "allow_public_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.myvpc.id

  dynamic "ingress" {
    for_each = var.tls-ports
    iterator = tls-port
    content {
      description      = "TLS rules"
      from_port        = tls-port.value
      to_port          = tls-port.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(local.common-tags,
    {
      "Name" = "${local.name-prefix}-pubSG"
    }
  )
}