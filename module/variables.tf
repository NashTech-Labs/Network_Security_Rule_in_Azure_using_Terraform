variable "name" {
  description = "Name of Network Security Group"
  type        = string
}

variable "network_security_rule_name" {
  description = "Name of Network Security Rule, it is consists of the combination of access-direction-protocol-priority."
  type        = string
}
variable "network_security_rule_priority" {
  description = "Priority of Network Security Rule"
  type        = number
}
variable "network_security_rule_direction" {
  description = "Direction of Network Security Rule. Possible values are Inbound and Outbound."
  type        = string
  default     = "Inbound"
}
variable "network_security_rule_access" {
  description = "Access of Network Security Rule"
  type        = string
  default     = "Allow"
}
variable "network_security_rule_protocol" {
  description = "Protocol of Network Security Rule"
  type        = string
  default     = "Tcp"
}
variable "network_security_rule_source_port_ranges" {
  description = "Source Port Ranges of Network Security Rule"
  type        = list(string)
}

variable "network_security_rule_destination_port_ranges" {
  description = "Destination Port Ranges of Network Security Rule"
  type        = list(string)
}
variable "network_security_rule_source_address_prefixes" {
  description = "Source Address Prefixes of Network Security Rule"
  type        = list(string)
}

variable "network_security_rule_destination_address_prefixes" {
  description = "Destination Address Prefixes of Network Security Rule"
  type        = list(string)
}