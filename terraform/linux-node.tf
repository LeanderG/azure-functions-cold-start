
resource "azurerm_app_service_plan" "sp_coldstarts_linux_node" {
  name                = "sp-coldstarts-linux-node"
  location            = azurerm_resource_group.rg_coldstarts.location
  resource_group_name = azurerm_resource_group.rg_coldstarts.name
  kind                = "FunctionApp"
  reserved            = true
  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "fa_coldstarts_linux_node_sm" {
  name                       = "fa-coldstarts-linux-node-sm"
  location                   = azurerm_resource_group.rg_coldstarts.location
  resource_group_name        = azurerm_resource_group.rg_coldstarts.name
  app_service_plan_id        = azurerm_app_service_plan.sp_coldstarts_linux_node.id
  storage_account_name       = azurerm_storage_account.sa_coldstarts.name
  storage_account_access_key = azurerm_storage_account.sa_coldstarts.primary_access_key
  os_type                    = "linux"
}

resource "azurerm_function_app" "fa_coldstarts_linux_node_md" {
  name                       = "fa-coldstarts-linux-node-md"
  location                   = azurerm_resource_group.rg_coldstarts.location
  resource_group_name        = azurerm_resource_group.rg_coldstarts.name
  app_service_plan_id        = azurerm_app_service_plan.sp_coldstarts_linux_node.id
  storage_account_name       = azurerm_storage_account.sa_coldstarts.name
  storage_account_access_key = azurerm_storage_account.sa_coldstarts.primary_access_key
  os_type                    = "linux"
}

resource "azurerm_function_app" "fa_coldstarts_linux_node_lg" {
  name                       = "fa-coldstarts-linux-node-lg"
  location                   = azurerm_resource_group.rg_coldstarts.location
  resource_group_name        = azurerm_resource_group.rg_coldstarts.name
  app_service_plan_id        = azurerm_app_service_plan.sp_coldstarts_linux_node.id
  storage_account_name       = azurerm_storage_account.sa_coldstarts.name
  storage_account_access_key = azurerm_storage_account.sa_coldstarts.primary_access_key
  os_type                    = "linux"
}