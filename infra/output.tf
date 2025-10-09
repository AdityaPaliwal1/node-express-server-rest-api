# EKS Cluster Endpoint
output "eks_cluster_endpoint" {
  description = "EKS API endpoint"
  value       = module.eks.cluster_endpoint
}

# EKS Cluster Name
output "eks_cluster_name" {
  description = "EKS Cluster name"
  value       = module.eks.cluster_name
}

# EKS Node Group Role Name
output "eks_node_group_role_name" {
  description = "IAM role name for the default managed node group"
  value       = module.eks.eks_managed_node_groups["default"].iam_role_name
}
