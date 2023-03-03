resource "aws_route53_record" "frontend" {
  zone_id = "Z02543141QBSJJNNYEJL"
  name    = "${var.component}-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}