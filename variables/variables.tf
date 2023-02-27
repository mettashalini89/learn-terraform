variable "sample" {     # creating variable
  default = "hello world"
}

output "sample1"{
  value = var.sample #accessing variable syntax= var.variable name
}

variable "example1"{} # we should not hardcode the data directly so we used tfvars file to get data and variable declaration is needed in terraform

output "sample2"{
  value = var.example1
}