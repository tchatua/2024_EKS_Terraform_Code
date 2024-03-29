resource "aws_security_group" "dnv_sg_k8s" {
  name        = "dvn_sg_k8s"
  description = "Allow ssh inbound traffic"
  vpc_id      = aws_vpc.dnv_vpc.id

  ingress {
    description = "ssh access to public"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.tcp_protocol
    cidr_blocks = var.internet_open_ip
  }

  egress {
    description = "outbound traffic"
    from_port   = var.wildcard_port
    to_port     = var.wildcard_port
    protocol    = var.minus_one_protocol_code
    cidr_blocks = var.internet_open_ip
  }
}