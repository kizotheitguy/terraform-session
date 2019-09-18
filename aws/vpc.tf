resource "aws_vpc" "main" {
  cidr_block = ["${var.vnet_cidr}"]
  tags = "${merge(
    local.common_tags,
    map("Name", "${var.resource_name}-vpc")
    )
  }"
  # tags             = "${local.common_tags}"
}