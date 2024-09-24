resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "West Europe"
}

module "l2_nsg_test" {
    source = "./L2/nsg_allow_http"
    location = var.location
    resource_group_name = var.resource_group_name
    name = var.nsg_name
    tags = var.tags
    subscription_id = var.subscription_id

    depends_on = [ azurerm_resource_group.rg ]
}