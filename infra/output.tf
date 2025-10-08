output "eks_cluster_endpoint" {
  description = "EKS API endpoint"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_name" {
  description = "EKS Cluster name"
  value       = module.eks.cluster_id
}

output "eks_node_group_role_name" {
  description = "Node group role name"
  value       = module.eks.node_groups["default"].iam_role_name
}
