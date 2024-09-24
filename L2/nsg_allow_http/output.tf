output "nsg" {
  value = module.l1_nsg
  description = "The defined Network Security Group"
}

output "nsg_rule_allow_http" {
  value = azurerm_network_security_rule.allow_http
  description = "The defined Network Security Group"
}