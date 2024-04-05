module "vpc" {
  source = "../../a01_module/a01_VPC/"
  # region
  region = var.region
  # vpc
  cidr_block_vpc = var.cidr_block_vpc
  name           = var.name
  #pub_sub_1
  cidr_block_pub_sub_1 = var.cidr_block_pub_sub_1
  #pub_sub_2
  cidr_block_pub_sub_2 = var.cidr_block_pub_sub_2
}