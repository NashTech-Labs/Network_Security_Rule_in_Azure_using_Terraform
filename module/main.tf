data "azurerm_network_security_group" "nsg" {
  name                = var.name_VV
  resource_group_name = "${var.name_VV}-rg"
}


resource "azurerm_network_security_rule" "network_security_rule" {

  name                         = "${var.network_security_rule_access_VV}-${var.network_security_rule_direction_VV}-${var.network_security_rule_protocol_VV}-${var.network_security_rule_priority_VV}"
  priority                     = var.network_security_rule_priority_VV
  direction                    = var.network_security_rule_direction_VV
  access                       = var.network_security_rule_access_VV
  protocol                     = var.network_security_rule_protocol_VV
  source_port_ranges           = var.network_security_rule_source_port_ranges_VV
  destination_port_ranges      = var.network_security_rule_destination_port_ranges_VV
  source_address_prefixes      = var.network_security_rule_source_address_prefixes_VV
  destination_address_prefixes = var.network_security_rule_destination_address_prefixes_VV
  resource_group_name          = data.azurerm_network_security_group.nsg.resource_group_name_VV
  network_security_group_name  = data.azurerm_network_security_group.nsg.name_VV

}