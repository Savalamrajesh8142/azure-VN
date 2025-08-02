resource "azurerm_resource_group" "base" {
  name     = "good"
  location = "east us"
}
resource "azurerm_virtual_network" "edge" {
  name                = "tax"
  resource_group_name = azurerm_resource_group.base.name
  location            = azurerm_resource_group.base.location
  address_space       = ["10.0.0.0/16"]

  depends_on = [azurerm_resource_group.base]
}