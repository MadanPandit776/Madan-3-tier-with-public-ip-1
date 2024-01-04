resource "azurerm_virtual_machine" "VMS" {
  for_each                         = var.VMS
  name                             = each.value.name
  location                         = each.value.location
  resource_group_name              = each.value.resource_group_name
  network_interface_ids            = each.value.network_interface_ids
  vm_size                          = each.value.vm_size
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_image_reference {

    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }

  storage_os_disk {
    name              = each.value.os_disk
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = each.value.comp_name
    admin_username = "madan"
    admin_password = "Faridabad@1989"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}