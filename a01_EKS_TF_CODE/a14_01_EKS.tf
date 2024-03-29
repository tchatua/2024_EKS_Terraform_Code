resource "aws_eks_cluster" "eks" {
  name     = var.name_eks
  role_arn = aws_iam_role.controller_node.arn

  vpc_config {
    # subnet_ids = [aws_subnet.pub_sub1.id, aws_subnet.pub_sub2.id]
    subnet_ids = [aws_subnet.pub_sub_1.id, aws_subnet.pub_sub_2.id]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure 
  #such as Security Groups.

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSServicePolicy,
    aws_iam_role_policy_attachment.AmazonEKSVPCResourceController,
    aws_iam_role_policy_attachment.AmazonEKSVPCResourceController,
    aws_subnet.pub_sub_1,
    aws_subnet.pub_sub_2,
  ]

}