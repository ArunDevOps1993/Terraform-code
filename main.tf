terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "89ed735a-a288-487d-8f2e-dc57af7a7232"
}

# resource "azurerm_resource_group" "test11" {
#   name     = "vinit_test11"
#   location = "West Europe"
# }
# resource "azurerm_storage_account" "teststg01" {
#   name                     = "vinitstg03"
#   resource_group_name      = "vinit_test11"
#   location                 = "west europe"
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
# }
resource "azurerm_resource_group" "test12" {
  name     = "vinit_test12"
  location = "West Europe"
}
resource "azurerm_storage_account" "teststg03" {
  name                     = "vinitstg04"
  resource_group_name      = azurerm_resource_group.test12.name
  location                 = azurerm_resource_group.test12.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}