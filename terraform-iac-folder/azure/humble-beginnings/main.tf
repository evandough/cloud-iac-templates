terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name # This references your RG name specified in your variables.tf
  location = var.location # This references your location specified in your variables.tf
}

resource "azurerm_storage_account" "st" {
  name                     = var.storage_account_name # This references your storage account name specified in your variables.tf
  resource_group_name      = var.resource_group_name # This references your RG name specified in your variables.tf
  location                 = var.location # This references your location specified in your variables.tf
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
