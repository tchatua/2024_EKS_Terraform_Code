# General Variable
name                = "dnv"
createby            = "dnv-group"
maintainer          = "dnv-team"
availability_zone_1 = "us-east-1a"
availability_zone_2 = "us-east-1b"

# a02 provider
region = "us-east-1"

# a03 VPC
cidr_block_vpc = "192.168.0.0/16"

# a04 Publis Subnet
cidr_block_pub_sub_1    = "192.168.10.0/24"
cidr_block_pub_sub_2    = "192.168.20.0/24"
map_public_ip_on_launch = "true"
k8s_cluster_ed_eks_01   = "shared"

# a05 Private subnet
cidr_block_priv_sub_1 = "192.168.30.0/24"
cidr_block_priv_sub_2 = "192.168.40.0/24"
cidr_block_priv_sub_3 = "192.168.50.0/24"
cidr_block_priv_sub_4 = "192.168.60.0/24"

# a07 Public Route Table
internet_open_for_everybody = "0.0.0.0/0"

# Security Group
ssh_port         = 22
tcp_protocol     = "tcp"
internet_open_ip = ["0.0.0.0/0"]

wildcard_port           = 0
minus_one_protocol_code = "-1"

# a12 IAM Roles
name_iam_role_controller_node = "dnv_eks_controller_node"
name_iam_role_worker_node     = "dnv_eks_worker_node"
name_iam_policy_autoscaler    = "dnv_eks_autoscaler_policy"
name_iam_profile_worker_node  = "dnv_eks_worker_profile"

# a13 EKS
name_eks = "dnv_eks_alpha"