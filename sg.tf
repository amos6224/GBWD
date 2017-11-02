resource "aws_security_group" "warren-gilbert" {
  name = "nginx"
  description = "Webserver"
  vpc_id = "${aws_vpc.warren-gilbert.id}"
}

resource "aws_security_group_rule" "warren-gilberte" {
  security_group_id = "${aws_security_group.warren-gilbert.id}"
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "warren-gilberts" {
  security_group_id = "${aws_security_group.warren-gilbert.id}"
  type = "egress"
  from_port = 0
  to_port   = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh" {
  security_group_id = "${aws_security_group.warren-gilbert.id}"
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
