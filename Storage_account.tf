terraform {
    backend "azurerm" {
        resource_group_name  = "orange5"
        storage_account_name = "orangestg5"
        container_name       = "orangecontainer"
        key                 = "terraform.tfstatestg"
    }
   required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "0cb6bac0-cbdd-4504-8e3e-4df9e0e800af"
}
resource "azurerm_storage_account" "orangestg" {
  name                     = "orangestg5"
  resource_group_name      = "orange5"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "staging"
  }
}