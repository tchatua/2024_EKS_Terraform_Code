resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = "${var.name}-pub-rt"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}

resource "aws_route_table_association" "pub-sub_1-rt-association" {
  route_table_id = aws_route_table.pub_rt.id
  subnet_id      = aws_subnet.pub_sub_1.id
}

resource "aws_route_table_association" "pub-sub_2-rt-association" {
  route_table_id = aws_route_table.pub_rt.id
  subnet_id      = aws_subnet.pub_sub_2.id
}

resource "aws_route" "pub-rt" {
  route_table_id         = aws_route_table.pub_rt.id
  destination_cidr_block = var.internet_open_for_everybody
  gateway_id             = aws_internet_gateway.igw.id
}
