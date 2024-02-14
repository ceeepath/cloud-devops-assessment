resource "azurerm_kubernetes_cluster" "main" {
  name                = var.aks_cluster_name
  kubernetes_version  = var.kubernetes_version
  location            = var.location
  resource_group_name = data.azurerm_resource_group.main.name
  dns_prefix          = var.aks_cluster_name

  default_node_pool {
    name                = "default"
    node_count          = var.node_count
    vm_size             = "Standard_B1s"
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }
}