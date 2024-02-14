module "deploy-aks" {
  source                 = "./modules/aks"
  my_resource_group_name = var.my_resource_group_name
  aks_cluster_name       = var.aks_cluster_name
  kubernetes_version     = var.kubernetes_version
  location               = var.location
  node_count             = var.node_count
}