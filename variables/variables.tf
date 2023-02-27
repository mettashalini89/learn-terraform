variable "sample" {     # creating variable
  default = "hello world"
}

output "sample1"{
  value = var.sample #accessing variable syntax= var.variable name
}