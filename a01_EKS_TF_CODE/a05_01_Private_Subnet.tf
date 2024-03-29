
resource "aws_subnet" "priv_sub_1" {
  cidr_block        = var.cidr_block_priv_sub_1
  availability_zone = var.availability_zone_1
  vpc_id            = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = "${var.name}-priv-sub-1"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}

resource "aws_subnet" "priv_sub_2" {
  cidr_block        = var.cidr_block_priv_sub_2
  availability_zone = var.availability_zone_2
  vpc_id            = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = "${var.name}-priv-sub-2"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}

resource "aws_subnet" "priv_sub_3" {
  cidr_block        = var.cidr_block_priv_sub_3
  availability_zone = var.availability_zone_1
  vpc_id            = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = "${var.name}-priv-sub-3"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}

resource "aws_subnet" "priv_sub_4" {
  cidr_block        = var.cidr_block_priv_sub_4
  availability_zone = var.availability_zone_2
  vpc_id            = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = "${var.name}-priv-sub-4"
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}
