resource "aws_secretsmanager_secret" "db_username" {
  name = "DB_USERNAME_1"
}
resource "aws_secretsmanager_secret_version" "db_username" {
  secret_id     = aws_secretsmanager_secret.db_username.id
  secret_string = jsonencode(var.db_username)

  lifecycle {
     ignore_changes = [secret_string]
  }
}

resource "aws_secretsmanager_secret" "db_password" {
  name = "DB_PASSWORD_1"
}
resource "aws_secretsmanager_secret_version" "db_password" {
  secret_id     = aws_secretsmanager_secret.db_password.id
  secret_string = jsonencode(var.db_password)

  lifecycle {
     ignore_changes = [secret_string]
  }
}

