resource "aws_internet_gateway" "warren-gilbert" {
  vpc_id = "${aws_vpc.warren-gilbert.id}"
}
