data "aws_ssm_parameter" "username" {
  name = "roboshop.${var.env}.mysql.amqp.username"
}

data "aws_ssm_parameter" "password" {
  name = "roboshop.${var.env}.mysql.amqp.password"
}
