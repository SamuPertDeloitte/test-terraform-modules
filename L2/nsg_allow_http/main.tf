module "l1_nsg" {
    source = "../../L1/nsg"
    location = var.location
    resource_group_name = var.resource_group_name
    name = var.name
    tags = var.tags
    subscription_id = var.subscription_id
}

# Define an allow rule for L1 NSG
resource "azurerm_network_security_rule" "allow_http" {
  name                        = "AllowHttpInbound"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.name
  depends_on = [ module.l1_nsg ]
}