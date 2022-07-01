locals {
  db_password = {
    admin = "my-passcode"
  }
}

output "db_password" {
  value     = local.db_password
  sensitive = true
}
