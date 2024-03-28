resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = "${var.name}-igw"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}