variable "variable_2" {}
variable "st1_variable_1" {}
variable "common_variable_2" {}

output "out_variable_2" {
  value = "Here is ${var.variable_2}: ${var.st1_variable_1}"
}

output "out_common_variable_2" {
  value = "Here is ${var.common_variable_2}"
}
