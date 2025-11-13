resource "aws_db_parameter_group" "rds_mysql_param_group" {
  name        = "rds-mysql8-param-group"
  family      = "mysql8.0"
  description = "Custom parameter group for MySQL 8.0"

  # Example parameter (optional)
  parameter {
    name  = "max_connections"
    value = "150"
  }

  tags = {
    Name        = "rds-mysql8-param-group"
    X-CS-Account = "547045142213"
    X-CS-Region  = "us-east-1"
    Owner        = "sneha"
    Reason       = "template"
    Environment  = "test"
  }
}

resource "aws_db_instance" "rds_instance" {
  identifier              = "sneha-rds-demo"
  allocated_storage       = 20
  db_name                 = "mydb"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "Password123!"
  parameter_group_name    = aws_db_parameter_group.rds_mysql_param_group.name
  skip_final_snapshot     = true
  publicly_accessible     = false
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name

  tags = {
    Name         = "rds-instance"
    X-CS-Account = "547045142213"
    X-CS-Region  = "us-east-1"
    Owner        = "sneha"
    Reason       = "template"
    Environment  = "test"
  }
}
