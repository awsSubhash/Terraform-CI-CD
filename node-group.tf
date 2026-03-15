module "eks_node_group" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version = "20.0.0"

  cluster_name    = module.eks.cluster_name
  cluster_version = module.eks.cluster_version

  subnet_ids = module.vpc.private_subnets

  name = "eks-node-group"

  instance_types = [var.node_instance_type]

  min_size     = 1
  max_size     = 3
  desired_size = 2
}
