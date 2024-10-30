resource "azurerm_kubernetes_cluster" "default" {
  location            = var.location
  name                = var.cluster_name
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = "1.30.5"

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"
  }

  monitor_metrics {
    # enabled = true
    # annotations_allowed = [
    #   "app.kubernetes.io/name",
    #   "environment",
    #   "custom-annotation-*"
    # ]
    # labels_allowed = [
    #   "app",
    #   "environment",
    #   "custom-label-*"
    # ]
  }

  tags = {
    Environment = var.tag_environment
  }
}