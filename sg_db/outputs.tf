// Output ID of sg_db SG we made
output "security_group_id_db" {
  value = "${aws_security_group.main_security_group.id}"
}
