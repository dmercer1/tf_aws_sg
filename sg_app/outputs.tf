// Output ID of sg_app SG we made
output "security_group_id_app" {
  value = "${aws_security_group.main_security_group.id}"
}
