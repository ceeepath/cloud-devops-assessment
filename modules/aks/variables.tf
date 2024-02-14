variable "my_resource_group_name" {
  description = "The Name of this Resource Group"
  type        = string
}

variable "aks_cluster_name" {
  description = "(Required) The name of the Managed Kubernetes Cluster to create."
  type        = string
}

variable "kubernetes_version" {
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster."
  type        = string
}

variable "location" {
  description = "(Required) The location where the Managed Kubernetes Cluster should be created."
  type        = string
}

variable "node_count" {
  description = "(Optional) The initial number of nodes which should exist in this Node Pool."
  type        = number
}