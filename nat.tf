resource "aws_eip" "warren-gilbert" {
  vpc = "true"
}

resource "aws_nat_gateway" "warren-gilbert" {
  subnet_id = "${aws_subnet.private.id}"
  allocation_id = "${aws_eip.warren-gilbert.id}"
}
