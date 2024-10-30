# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.7.0"
    }
    kubernetes = {
      source  = "registry.terraform.io/hashicorp/kubernetes"
      version = "~> 2.0.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.11.3"
    }
    helm = {
      source  = "registry.terraform.io/hashicorp/helm"
      version = "~> 2.0.2"
    }
    # random = {
    #   source  = "registry.terraform.io/hashicorp/random"
    #   version = "~> 3.0.0"
    # }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = var.subscription_id
}

# provider "kubernetes" {
#   host                   = azurerm_kubernetes_cluster.default.kube_admin_config.0.host
#   username               = azurerm_kubernetes_cluster.default.kube_admin_config.0.username
#   password               = azurerm_kubernetes_cluster.default.kube_admin_config.0.password
#   client_certificate     = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.client_certificate)
#   client_key             = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.client_key)
#   cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.cluster_ca_certificate)
# }

# provider "kubectl" {
#   host                   = azurerm_kubernetes_cluster.default.kube_admin_config.0.host
#   username               = azurerm_kubernetes_cluster.default.kube_admin_config.0.username
#   password               = azurerm_kubernetes_cluster.default.kube_admin_config.0.password
#   client_certificate     = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.client_certificate)
#   client_key             = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.client_key)
#   cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.cluster_ca_certificate)
# }

# provider "helm" {
#   kubernetes {
#     host                   = azurerm_kubernetes_cluster.default.kube_admin_config.0.host
#     username               = azurerm_kubernetes_cluster.default.kube_admin_config.0.username
#     password               = azurerm_kubernetes_cluster.default.kube_admin_config.0.password
#     client_certificate     = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.client_certificate)
#     client_key             = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.client_key)
#     cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.default.kube_admin_config.0.cluster_ca_certificate)
#   }
#
#   registry {
#     # Manually perform a `helm repo update` on the runner before running Terraform
#     url      = "oci://artifacts.private.registry"
#     username = "api"
#     # Pass in secret on environment variable named TF_VAR_artifactAPIToken
#     password = var.artifactAPIToken
#   }
# }
