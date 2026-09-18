terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dev-backend"
    storage_account_name = "devstrgaks"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "cf72e154-d368-4a84-87cf-577efd0a8880"

}