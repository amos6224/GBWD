resource "aws_instance" "warren-gilbert" {
  ami = "ami-cd0f5cb6"
  instance_type = "m4.large"
  subnet_id = "${aws_subnet.public.id}"
  vpc_security_group_ids = ["${aws_security_group.warren-gilbert.id}"]
  associate_public_ip_address = "true"
  key_name =  "test"
}
