// Output ID of sg_ilb SG we made
output "security_group_id_ilb" {
  value = "${aws_security_group.main_security_group.id}"
}
