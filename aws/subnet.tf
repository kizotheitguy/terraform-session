resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.subnet_cidr}"
  tags = "${merge(
    local.common_tags,
    map("Name", "${var.resource_name}-subnet")
    )
  }"
}