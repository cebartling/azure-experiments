variable "subscription_id" {
  description = "Azure Subscription ID"
}

variable "tag_environment" {
  default = "Demo"
}

variable "location" {
  default = "West US"
}

variable "resource_group_name" {
  default = "app-insights-experiment-rg"
}

variable "cluster_name" {
  default = "app-insights-experiment-cluster"
}

variable "dns_prefix" {
  default = "app-insights-experiment"
}

variable "monitor_workspace_name" {
  default = "app-insights-experiment-monitor-workspace"
}

variable "log_analytics_workspace_name" {
  default = "app-insights-experiment-log-analytics-workspace"
}

variable "application_insights_name" {
  default = "app-insights-experiment-app-insights"
}