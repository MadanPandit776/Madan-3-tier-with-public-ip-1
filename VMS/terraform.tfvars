VMS = {
  VM1 = {
    name                  = "Frontend_VM"
    location              = "West us"
    resource_group_name   = "Pandit_RG"
    network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/Pandit_RG/providers/Microsoft.Network/networkInterfaces/interface1"]
    vm_size               = "Standard_D2s_v3"
    comp_name             = "Frontend"
    os_disk               = "myosdisk1"
    
  }
  VM2 = {
    name                  = "Backend_VM"
    location              = "West us"
    resource_group_name   = "Pandit_RG"
    network_interface_ids = ["/subscriptions/bf616c2a-03fb-4ee3-b117-12a41f4f3a31/resourceGroups/Pandit_RG/providers/Microsoft.Network/networkInterfaces/interface2"]
    vm_size               = "Standard_D2s_v3"
    comp_name             = "Backend"
    os_disk               = "myosdisk2"
  }
}