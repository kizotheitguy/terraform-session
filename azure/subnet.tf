resource "azurerm_subnet" "subnet" {
  name                      = "${var.resource_name}-subnet"
  resource_group_name       = "${azurerm_resource_group.main.name}"
  virtual_network_name      = "${azurerm_virtual_network.vnet.name}"
  address_prefix            = "${var.subnet_cidr}"
  network_security_group_id = "${azurerm_network_security_group.nsg.id}"
  depends_on = [
    "azurerm_network_security_group.nsg",
  ]
}