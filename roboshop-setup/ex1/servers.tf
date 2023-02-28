resource "aws_instance" "frontend"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z02543141QBSJJNNYE
  name    = "frontend-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = Z02543141QBSJJNNYE
  name    = "cart-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = Z02543141QBSJJNNYE
  name    = "catalogue-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = Z02543141QBSJJNNYE
  name    = "user-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "mongodb"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = Z02543141QBSJJNNYE
  name    = "mongodb-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "shipping"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = Z02543141QBSJJNNYE
  name    = "shipping-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = Z02543141QBSJJNNYE
  name    = "payment-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mysql"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = Z02543141QBSJJNNYE
  name    = "mysql-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "dispatch"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "dispatch"
  }
}
resource "aws_route53_record" "dispatch" {
  zone_id = Z02543141QBSJJNNYE
  name    = "dispatch-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}

resource "aws_instance" "rabbitmq"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = Z02543141QBSJJNNYE
  name    = "rabbitmq-dev.devopsb71.live"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}