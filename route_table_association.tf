resource "aws_route_table_association" "warren-gilber" {
  subnet_id = "${aws_subnet.public.id}"
  route_table_id = "${aws_route_table.warren-gilbert.id}"
}
