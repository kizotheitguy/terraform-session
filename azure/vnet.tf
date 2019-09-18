# Create the Core Virtual Network and Subnets
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}"
  location            = "${var.region}"
  resource_group_name = "${var.resource_group}"
  address_space       = ["${var.vnet_cidr}"]
  tags                = "${local.common_tags}"
}