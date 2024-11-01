output "client_certificate" {
  value     = azurerm_kubernetes_cluster.default.kube_config[0].client_certificate
  sensitive = true
}

output "client_key" {
  value     = azurerm_kubernetes_cluster.default.kube_config[0].client_key
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = azurerm_kubernetes_cluster.default.kube_config[0].cluster_ca_certificate
  sensitive = true
}

output "cluster_password" {
  value     = azurerm_kubernetes_cluster.default.kube_config[0].password
  sensitive = true
}

output "cluster_username" {
  value     = azurerm_kubernetes_cluster.default.kube_config[0].username
  sensitive = true
}

output "host" {
  value     = azurerm_kubernetes_cluster.default.kube_config[0].host
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.default.kube_config_raw
  sensitive = true
}

output "resource_group_name" {
  value = azurerm_resource_group.default.name
}

output "application_insights_instrumentation_key" {
  value     = azurerm_application_insights.default.instrumentation_key
  sensitive = true
}

output "application_insights_connection_string" {
  value     = azurerm_application_insights.default.connection_string
  sensitive = true
}

output "application_insights_app_id" {
  value     = azurerm_application_insights.default.app_id
  sensitive = true
}