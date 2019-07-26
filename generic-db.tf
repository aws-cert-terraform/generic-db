

resource "aws_db_instance" "db" {
  allocated_storage      = "${var.size}"
  storage_type           = "${var.storage_type}"
  engine                 = "${var.engine}"
  engine_version         = "${var.engine_version}"
  instance_class         = "${var.instance_type}"
  name                   = "${var.db_name}"
  skip_final_snapshot    = true
  username               = "postgres"
  password               = "change-this"
  vpc_security_group_ids = var.security_group_ids
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
}

resource "aws_db_subnet_group" "default" {
  name       = "awscert-db-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}
