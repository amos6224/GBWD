resource "aws_route_table" "warren-gilbert" {
  vpc_id = "${aws_vpc.warren-gilbert.id}"
}
