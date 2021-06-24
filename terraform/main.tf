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

resource "azurerm_resource_group" "rg-coldstarts" {
  name     = "rg-coldstarts"
  location = "westeurope"
}
