resource "aws_nat_gateway" "dnv_nat_gw_az-1" {
  allocation_id = aws_eip.dnv_ip_az_1.id
  subnet_id     = aws_subnet.priv_sub_1.id
  tags = {
    Name                              = "${var.name}-NAT-GW-AZ-1"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}

resource "aws_nat_gateway" "dnv_nat_gw_az-2" {
  allocation_id = aws_eip.dnv_ip_az_2.id
  subnet_id     = aws_subnet.priv_sub_2.id
  tags = {
    Name                              = "${var.name}-NAT-GW-AZ-2"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}
