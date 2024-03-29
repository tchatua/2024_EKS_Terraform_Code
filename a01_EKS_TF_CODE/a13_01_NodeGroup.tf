# Frontend
resource "aws_eks_node_group" "dnv_frontend" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "app"
  node_role_arn   = aws_iam_role.worker_node.arn
  capacity_type   = "ON_DEMAND"
  disk_size       = "20"
  instance_types  = ["t3.medium"] #  t2.2xlarge
  remote_access {
    ec2_ssh_key               = "terraform_dwp"
    source_security_group_ids = [aws_security_group.dnv_sg_k8s.id]
  }

  subnet_ids = [aws_subnet.pub_sub_1.id, aws_subnet.pub_sub_2.id]

  scaling_config {
    desired_size = 1
    max_size     = 3
    min_size     = 1
  }

  labels = {
    name = "app"
  }

  taint {
    key    = "name"
    value  = "app"
    effect = "NO_SCHEDULE"
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
    aws_subnet.pub_sub_1,
    aws_subnet.pub_sub_2,
  ]
}

# Backend
resource "aws_eks_node_group" "dnv_backend" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "db"
  node_role_arn   = aws_iam_role.worker_node.arn
  capacity_type   = "ON_DEMAND"
  disk_size       = "20"
  instance_types  = ["t3.medium"] # t2.2xlarge
  remote_access {
    ec2_ssh_key               = "private-ssh-key"
    source_security_group_ids = [aws_security_group.dnv_sg_k8s.id]
  }

  subnet_ids = [aws_subnet.pub_sub_1.id, aws_subnet.pub_sub_2.id]

  scaling_config {
    desired_size = 1
    max_size     = 3
    min_size     = 1
  }

  labels = {
    name = "db"
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
    aws_subnet.pub_sub_1,
    aws_subnet.pub_sub_2,
  ]
}
