provider "aws" {
  region = "us-east-1"
  access_key = "AKIAUN5VBSYI5NJTTSXR"
  secret_key = "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"
}


resource "aws_db_instance" "mytestdb" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

}

provider "azurerm" {
  features {}
}
