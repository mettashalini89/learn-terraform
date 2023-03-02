data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2" {
#  count = 5 #count used to iterate the resources, just a loop
  count = length(var.instances)
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
}

variable "instances" {
  default = ["cart", "frontend", "catalogue", "user", "shipping"]
}

output "public_ips"{
  value = aws_instance.ec2.*.public_ip #star is used for all publicips , for particular we need to use index no

}