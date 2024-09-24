output "nsg" {
  value = module.l2_nsg_test.nsg
  description = "The defined Network Security Group"
}

output "nsg_rule_allow_http" {
  value = module.l2_nsg_test.nsg_rule_allow_http
  description = "The defined Network Security Group rule"
}