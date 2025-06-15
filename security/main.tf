resource "aws_security_group" "main" {
  vpc_id = var.vpc_id
}

resource "aws_vpc_security_group_ingress_rule" "ssh_in" {
  security_group_id = aws_security_group.main.id
  cidr_ipv4 = var.allowed_ips
  ip_protocol = "tcp"
  from_port = 22
  to_port = 22
}