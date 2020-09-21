# Create a configured RDS Instance.

resource "aws_db_instance" "rds_instance" {
  name = "${var.environment}FPdatabase"

  publicly_accessible = true  # Only accessible to files in our VPC due to sec group.

  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = [var.rds_sec_group_id]

  allocated_storage     = 10
  max_allocated_storage = var.db_max_allocated_storage # Defining this enables storage Autoscaling.
  storage_type          = "gp2"                        # General Purpose SSD.

  engine         = "mysql"
  engine_version = "5.7"

  instance_class = var.database_instance_class

  username = "root"
  password = var.db_root_password

  skip_final_snapshot = true  # So we can delete our RDS instance with Terraform.
}