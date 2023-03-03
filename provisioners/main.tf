resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-043fd9cc9443cbb75"]
  tags = {
    Name = "test"
  }
}

provisioner  "remote-exec" { #provisioners are used after resource creation to do some tasks on resource

  connection {
    host = self.public_ip
    user = "root"
    password = "DevOps321"
  }

  inline = [
    "echo hello world"
  ]

}

