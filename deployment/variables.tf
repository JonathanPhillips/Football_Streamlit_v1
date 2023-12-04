variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
  // Default can be set or omitted. If omitted, value must be provided at runtime.
  // default     = ["subnet-xxxxxxxxxxxxxx", "subnet-yyyyyyyyyyyyyy"]
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  // Default can be set or omitted.
  // default     = "example-cluster-name"
}

variable "iam_role" {
  description = "IAM role for the EKS cluster"
  type        = string
  // Example: "eks-cluster-role"
}

variable "node_group_iam_role" {
  description = "IAM role for the EKS worker nodes"
  type        = string
  // Example: "eks-cluster-role"
}

