resource "azurerm_resource_group" "rg" {
  name = "${var.app_name}-rg"
  location = var.location
}

resource "azurerm_service_plan" "sp" {
  name                = "${var.app_name}-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "B1"
}


resource "azurerm_linux_web_app" "web-app" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.sp.id 

  site_config{}
  app_settings = {
    "WEBSITES_PORT" = "8080"
  }
}
