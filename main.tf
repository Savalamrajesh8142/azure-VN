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
resource "azurerm_subnet" "rest" {
  name                 = "rest"
  resource_group_name  = azurerm_resource_group.base.name
  virtual_network_name = azurerm_virtual_network.edge.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_subnet" "cnt" {
  name                 = "cnt"
  resource_group_name  = azurerm_resource_group.base.name
  virtual_network_name = azurerm_virtual_network.edge.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_subnet" "plo" {
  name                 = "plo"
  resource_group_name  = azurerm_resource_group.base.name
  virtual_network_name = azurerm_virtual_network.edge.name
  address_prefixes     = ["10.0.3.0/24"]
}
resource "azurerm_subnet" "ner" {
  name                 = "ner"
  resource_group_name  = azurerm_resource_group.base.name
  virtual_network_name = azurerm_virtual_network.edge.name
  address_prefixes     = ["10.0.4.0/24"]
}