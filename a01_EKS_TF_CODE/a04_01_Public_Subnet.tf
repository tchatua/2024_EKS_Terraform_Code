resource "aws_subnet" "pub_sub_1" {
  cidr_block              = var.cidr_block_pub_sub_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = var.map_public_ip_on_launch
  vpc_id                  = aws_vpc.dnv_vpc.id
  tags = {
    Name                              = var.name
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }

}

resource "aws_subnet" "pub_sub_2" {
  cidr_block              = var.cidr_block_pub_sub_2
  availability_zone       = var.availability_zone_2
  vpc_id                  = aws_vpc.dnv_vpc.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name                              = var.name
    Createby                          = var.createby
    Maintainer                        = var.maintainer
    "kubernetes.io/cluster/ed-eks-01" = var.k8s_cluster_ed_eks_01
  }
}



