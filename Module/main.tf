resource "azurerm_resource_group" "abhi-rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "abhi-aks" {
  depends_on          = [azurerm_resource_group.abhi-rg]
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v7"
  }

  identity {
    type = "SystemAssigned"
  }
}
