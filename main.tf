resource "aws_security_group" "allow_tls" {
  name        = local.resource_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id
  tags = merge(var.common_tags,var.sg_tags,{
    Name = local.resource_name
  })

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}