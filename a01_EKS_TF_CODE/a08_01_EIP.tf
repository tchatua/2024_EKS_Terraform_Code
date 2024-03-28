resource "aws_eip" "dnv_ip_az_1" {
  tags = {
    Name                              = "${var.name}-EIP-AZ-1"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}
resource "aws_eip" "dnv_ip_az_2" {
  tags = {
    Name                              = "${var.name}-EIP-AZ-2"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}
