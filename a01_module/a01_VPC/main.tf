provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block_vpc

  tags = {
    Name = "${var.name}-vpc"
  }
}

resource "aws_subnet" "pub_sub_1" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.cidr_block_pub_sub_1

  tags = {
    Name = "${var.name}-pub-sub-1"
  }

}


resource "aws_subnet" "pub_sub_2" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.cidr_block_pub_sub_2

  tags = {
    Name = "${var.name}-pub-sub-2"
  }

}

