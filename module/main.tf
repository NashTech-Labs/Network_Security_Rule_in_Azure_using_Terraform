data "azurerm_network_security_group" "nsg" {
  name                = var.name
  resource_group_name = "${var.name}-rg"
}


resource "azurerm_network_security_rule" "network_security_rule" {

  name                         = "${var.network_security_rule_access}-${var.network_security_rule_direction}-${var.network_security_rule_protocol}-${var.network_security_rule_priority}"
  priority                     = var.network_security_rule_priority
  direction                    = var.network_security_rule_direction
  access                       = var.network_security_rule_access
  protocol                     = var.network_security_rule_protocol
  source_port_ranges           = var.network_security_rule_source_port_ranges
  destination_port_ranges      = var.network_security_rule_destination_port_ranges
  source_address_prefixes      = var.network_security_rule_source_address_prefixes
  destination_address_prefixes = var.network_security_rule_destination_address_prefixes
  resource_group_name          = data.azurerm_network_security_group.nsg.resource_group_name
  network_security_group_name  = data.azurerm_network_security_group.nsg.name

}