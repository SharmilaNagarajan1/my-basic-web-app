output "app_service_default_hostname" {
  value = azurerm_service_plan.sp.app_service_default_hostname
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "app_name" {
  value = azurerm_linux_web_app.web-app.name
}
