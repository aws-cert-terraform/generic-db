

resource "aws_db_instance" "db" {
  allocated_storage      = "${var.size}"
  storage_type           = "${var.storage_type}"
  engine                 = "${var.engine}"
  engine_version         = "${var.engine_version}"
  instance_class         = "${var.instance_type}"
  name                   = "${var.db_name}"
  username               = "postgres"
  password               = "change-this"
  // vpc_security_group_ids = []
}
