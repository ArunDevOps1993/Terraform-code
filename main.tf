terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "0cb6bac0-cbdd-4504-8e3e-4df9e0e800af"
}

resource "azurerm_resource_group" "rg3" {
  name     = "aruntest1"
  location = "West Europe"
}

resource "azurerm_storage_account" "stg3" {
  name                     = "stgdemo3"
  resource_group_name      = azurerm_resource_group.rg3.name
  location                 = azurerm_resource_group.rg3.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}