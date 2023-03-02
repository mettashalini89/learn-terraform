data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sq_id]
  tags = {
    Name = var.component
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z02543141QBSJJNNYEJL"
  name    = "${var.component}-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "component" {}
variable "instance_type" {}
variable "sq_id"{}