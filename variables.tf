variable "resource_group_location" {
  default     = "westeurope"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "final_project_rg"
  description = "Name of the resource group."
}

variable "firewall_rule_ip_address" {
  default     = "13.73.178.45"
  description = "VM IP address for firewall rule."
}
