provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-azure-tf"
    storage_account_name = "saazuretfcoldstarts"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg_coldstarts" {
  name     = "rg-coldstarts"
  location = "westeurope"
}

resource "azurerm_storage_account" "sa_coldstarts" {
  name                     = "sacoldstarts"
  resource_group_name      = azurerm_resource_group.rg_coldstarts.name
  location                 = azurerm_resource_group.rg_coldstarts.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

