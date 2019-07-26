

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
  vpc_security_group_ids = concat(var.security_group_ids, ["${aws_security_group_rule.allow_mysql_port.id}"])
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
}

resource "aws_db_subnet_group" "default" {
  name       = "awscert-db-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}

# Security groups
resource "aws_security_group" "mysql_sg" {
  name = "${var.name}-mysql-sg"
  vpc_id = "${var.vpc_id}"
}

//
// Note to self, these rules ATTACH to the sg above
//

# Security groups
resource "aws_security_group_rule" "allow_mysql_port" {
  type = "ingress"
  from_port = 3306
  to_port = 3306
  protocol = "tcp"
  source_security_group_id = var.source_sg
}
