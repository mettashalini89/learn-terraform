resource "aws_instance" "frontend"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "cart"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "catalogue"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "user"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "user"
  }
}

resource "aws_instance" "mongodb"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "shipping"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "payment"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "payment"
  }
}

resource "aws_instance" "mysql"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "dispatch"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "dispatch"
  }
}

resource "aws_instance" "rabbitmq"{  #first lable is from terraform and second lable is any can be given by user for his ref
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "rabbitmq"
  }
}