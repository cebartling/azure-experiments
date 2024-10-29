# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
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
