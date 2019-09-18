resource "azurerm_network_security_group" "nsg" {
  name                = "${var.resource_name}-nsg"
  location            = "${azurerm_resource_group.main.location}"
  resource_group_name = "${azurerm_resource_group.main.name}"
  tags = {
    environment = "Development"
  }
}