variable "eks_cluster_name" {
  description = "Name of Cluster"
  type        = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "environment" {
  description = "Environment name (e.g. dev, staging, prod)"
}