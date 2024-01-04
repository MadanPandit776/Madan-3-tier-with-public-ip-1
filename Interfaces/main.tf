# data "azurerm_public_ip" "My_PIP" {
#   name                = "Madan_PIP"
#   resource_group_name = "Pandit_RG"
# }
resource "azurerm_network_interface" "interface" {
  for_each = var.interface
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {

    name                          = "Ip_Config"
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = "Dynamic"
     
    


  }

 
}