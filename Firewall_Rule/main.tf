resource "azurerm_sql_firewall_rule" "myfirewallrule" {
  for_each = var.firewallrule
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  server_name         = each.value.server_name
  start_ip_address    = each.value.start_ip_address
  end_ip_address      = each.value.end_ip_address
}
