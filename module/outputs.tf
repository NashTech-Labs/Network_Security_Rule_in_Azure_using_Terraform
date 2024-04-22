output "id" {
  value       = azurerm_network_security_rule.network_security_rule.id
  description = "ID of Network Security Rule"

}

output "name" {
  value       = azurerm_network_security_rule.network_security_rule.name
  description = "Name of Network Security Rule, it is consists of the combination of access-direction-protocol-priority."

}