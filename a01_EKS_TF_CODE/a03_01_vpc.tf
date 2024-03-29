resource "aws_vpc" "dnv_vpc" {
  cidr_block = var.cidr_block_vpc
  tags = {
    Name       = "${var.name}-vpc"
    Createby   = var.createby
    Maintainer = var.maintainer
  }
}
