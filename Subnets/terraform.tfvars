mysubnet = {
  "subnet1" = {
  name                 = "subnet-1"
  resource_group_name  =  "Pandit_RG"
  virtual_network_name =  "My_Vnet"
  address_prefixes     = ["10.0.1.0/24"]
    },

  "subnet2" = {
  name                 = "subnet-2"
  resource_group_name  =  "Pandit_RG"
  virtual_network_name =  "My_Vnet"
  address_prefixes     = ["10.0.2.0/24"]
    }
}
