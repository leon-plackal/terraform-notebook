terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "storage_rg" {
  name     = "terraform-storage-rg"
  location = "East US"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "terraformsa48829"
  resource_group_name      = azurerm_resource_group.storage_rg.name
  location                 = azurerm_resource_group.storage_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

# create a container in the storage account
resource "azurerm_storage_container" "container" {
  name                  = "terraform-container"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}