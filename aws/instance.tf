resource "aws_instance" "foo" {
  ami           = "ami-f976839e"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.tf_test_subnet.id}"

  network_interface = {
    network_interface_id = "${aws_network_interface.main.id}"
    device_index         = 0
  }
  tags = "${merge(
    local.common_tags,
    map("Name", "${var.resource_name}-vpc")
    )
  }"
}