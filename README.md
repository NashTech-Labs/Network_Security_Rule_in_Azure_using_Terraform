## Description

Here, In this template, we will create the network security rule module in Azure cloud using the terraform scripts. 

---

#### Pre-requisite

* AZ Account
* Azure CLI

---

### Steps:-
1. Login into AZ account using `az login` or `az login --tenant <TENANT-ID>`
2. Login into the Azure using the Service Principal the Service Principal like `az service principal -u <client-id> -p <client-password> -t <tenant-ID>`

---
 
## Configuration

The following table lists the configurable parameters for the module with their default values.

| Parameters                                         | Description                                                                                            | Default | Type   | Required |
|----------------------------------------------------|--------------------------------------------------------------------------------------------------------|---------|--------|----------|
| name                                               | Name of Network Security Group                                                                         |         | string | Yes      |  
| network_security_rule_name                         | Name of Network Security Rule, it is consists of the combination of access-direction-protocol-priority |         | string | Yes      |  
| network_security_rule_priority                     | Priority of Network Security Rule                                                                      |         | number | Yes      |
| network_security_rule_direction                    | Direction of Network Security Rule. Possible values are Inbound and Outbound                           | Inbound | string | Yes      |
| network_security_rule_access                       | Access of Network Security Rule                                                                        | Allow   | string | Yes      |
| network_security_rule_protocol                     | Protocol of Network Security Rule                                                                      | Tcp     | string | Yes      |
| network_security_rule_source_port_ranges           | Source Port Ranges of Network Security Rule                                                            |         | string | Yes      |
| network_security_rule_destination_port_ranges      | Destination Port Ranges of Network Security Rule                                                       |         | string | Yes      |
| network_security_rule_source_address_prefixes      | Source Address Prefixes of Network Security Rule                                                       |         | string | Yes      |
| network_security_rule_destination_address_prefixes | Destination Address Prefixes of Network Security Rule                                                  |         | string | Yes      |

---
