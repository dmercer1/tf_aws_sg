// Provider specific configs

// Security Group Resource for Module
resource "aws_security_group" "main_security_group" {
    name = "${var.security_group_name}"
    description = "Security Group ${var.security_group_name}"
    vpc_id = "${var.vpc_id}"

    ingress {
        from_port = 5432
        to_port = 5432
        protocol = "-1"
        cidr_blocks = ["${split(",", var.source_cidr_blocks)}"]
    }
    ingress {
        from_port = 5432
        to_port = 5432
        protocol = "-1"
        security_groups = ["${split(",", var.source_security_groups)}"]
    }
    ingress {
        from_port = 5672
        to_port = 5672
        protocol = "-1"
        security_groups = ["${split(",", var.source_security_groups)}"]
    }
    ingress {
        from_port = 15762
        to_port = 15762
        protocol = "-1"
        cidr_blocks = ["${split(",", var.source_cidr_blocks)}"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "-1"
        cidr_blocks = ["${split(",", var.source_cidr_blocks)}"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
