resource "azurerm_resource_group" "main" {
  name     = "${var.resource_name}-rg"
  location = "${var.region}"
  tags     = "${local.common_tags}"
}

