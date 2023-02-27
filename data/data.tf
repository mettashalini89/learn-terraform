#data is used to retrive the data from resources
# helps to get the attributes of a resource created
#attribute is like the data of the created resource just like output of resource creation
#arguments are the data that we are giving when the time of resource creation like inputs

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "ami_attribute"{
  value = data.aws_ami.ami.image_id
}