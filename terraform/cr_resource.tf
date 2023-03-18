resource "azurerm_container_registry" "example" {
  name                = "examplerodrigounir"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
  admin_enabled       = true

  tags = local.tags
}
