resource "aws_security_group_rule" "allow_all" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = "0.0.0.0/0"
  security_group_id = "${aws_security_group.nsg.id}"
  self              = true
}

# Opening to 0.0.0.0/0 can lead to security vulnerabilities.