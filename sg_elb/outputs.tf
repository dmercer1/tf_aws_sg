// Output ID of sg_elb SG we made
output "security_group_id_elb" {
  value = "${aws_security_group.main_security_group.id}"
}
