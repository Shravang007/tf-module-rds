resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = var.subnet_ids

  tags = merge({ Name = "${var.env}-${var.component}" }, var.tags)
}


resource "aws_rds_cluster" "default" {
  cluster_identifier      = "${var.component}-${var.env}"
  engine                  = var.engine
  engine_version          = var.engine_version
  database_name           = var.database_name
  master_username         = "foo"
  master_password         = "bar"
}


