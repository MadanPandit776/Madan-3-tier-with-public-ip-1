resource "azurerm_virtual_network" "VNET" {
    for_each = var.VNET
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  #dns_servers         = ["10.0.0.4", "10.0.0.5"]
}