

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "app_name" {
  value = azurerm_linux_web_app.web-app.name
}
