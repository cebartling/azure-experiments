# Azure Monitor Application Insights experiment

This experiment demonstrates how to use Azure Monitor Application Insights to monitor a web application.

## Prerequisites

1. Azure CLI: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli
2. Terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli
3. Docker: https://docs.docker.com/get-docker/

## Setup 

1. Create a new `terraform.tfvars` file and populate it with the following values:

    ```shell
    subscription_id = "<subscription_id>"
    ```
   
2. Terraform the experiment in Azure:

    ```shell
    terraform init
    terraform apply
    ```
   
3. Capture the output values from the Terraform setup:

    ```shell
   terraform output kube_config > .kubeconfig
   ```