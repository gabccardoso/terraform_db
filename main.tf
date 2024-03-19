variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_session_token" {}

provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token = var.aws_session_token
}

resource "aws_db_instance" "humburguer_db" {

    lifecycle {
      create_before_destroy = true
    }
    allocated_storage    = 15
    storage_type         = "gp2"
    engine               = "mysql"
    engine_version       = "8.0.35"
    instance_class       = "db.t3.micro"
    identifier           = "humburguer-rds-instance-one"
    username             = "admin"
    password             = "gabi-senha-forte"
    skip_final_snapshot  = true
    storage_encrypted    = false
    publicly_accessible  = true

    db_name                 = "humburguer"
}
