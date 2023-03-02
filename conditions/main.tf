resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type #condition applied here

}

variable "instance_type"{}