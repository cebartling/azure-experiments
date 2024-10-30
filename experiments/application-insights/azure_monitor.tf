resource "azurerm_monitor_workspace" "default" {
  location            = var.location
  name                = var.monitor_workspace_name
  resource_group_name = azurerm_resource_group.default.name
}

resource "azurerm_log_analytics_workspace" "default" {
  name                = var.log_analytics_workspace_name
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "default" {
  name                = var.application_insights_name
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  workspace_id        = azurerm_log_analytics_workspace.default.id
  application_type    = "web"
}