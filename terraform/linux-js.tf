resource "azurerm_app_service_plan" "sp_coldstarts_linux_js" {
  name                = "sp-coldstarts-linux-js"
  location            = azurerm_resource_group.rg_coldstarts.location
  resource_group_name = azurerm_resource_group.rg_coldstarts.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "fa-coldstarts-linux-js" {
  name                       = "fa-coldstarts-linux-js"
  location                   = azurerm_resource_group.rg_coldstarts.location
  resource_group_name        = azurerm_resource_group.rg_coldstarts.name
  app_service_plan_id        = azurerm_app_service_plan.sp_coldstarts_linux_js.id
  storage_account_name       = azurerm_storage_account.sa_coldstarts.name
  storage_account_access_key = azurerm_storage_account.sa_coldstarts.primary_access_key
  os_type                    = "linux"
}