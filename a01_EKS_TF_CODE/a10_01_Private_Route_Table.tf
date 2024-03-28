resource "aws_route_table" "dvn_priv_rt" {
  vpc_id = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = "${var.name}-Private-RT"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}

resource "aws_route_table_association" "priv-sub1-rt-association" {
  route_table_id = aws_route_table.dvn_priv_rt.id
  subnet_id      = aws_subnet.priv_sub_1.id
}

resource "aws_route_table_association" "priv-sub2-rt-association" {
  route_table_id = aws_route_table.dvn_priv_rt.id
  subnet_id      = aws_subnet.priv_sub_2.id
}

