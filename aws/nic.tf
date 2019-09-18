resource "aws_network_interface" "main" {
  subnet_id       = "${aws_subnet.main.id}"
  private_ips     = ["10.0.0.50"]
  security_groups = ["${aws_security_group.web.id}"]
}

resource "aws_eip" "one" {
  vpc                       = true
  network_interface         = "${aws_network_interface.main.id}"
  associate_with_private_ip = "10.0.0.10"
  tags = "${merge(
    local.common_tags,
    map("Name", "${var.resource_name}-vpc")
    )
  }"
}