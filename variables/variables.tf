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

variable "cli" {} # we can send data to variable from command line(CLI)
output "sample3"{
  value = var.cli
}

variable "types"{
  default = {
    string = "string",
    number = 100,
    boolean = true
  }
}

output "types"{
  value = "${var.sample5[0]} attended ${var.sample4} 0f ${var.sample6["number"]}"
}


# mutiple sets of key value pairs in list

variable "d1" {
        default = [
                {
                    course_name = "devops"
                    tutor       = "Raghu"
                },
                {
                     course_name = "aws"
                     tutor       = "Raghu"

                }

        ]
}

output "course_name" {
        value = var.d1.*.course_name
}