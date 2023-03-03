module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
  sq_id = module.sq.sq_id  #added sq module output as input tp ec2 module
}

module "sq" {      #module declaration
  source = "./sq"
}

module "route53"{
  for_each = var.instances
  source = "./route53"
  component = each.value["name"]
  private_ip = module.ec2[each.value["name"]].private_ip
}

output "ec2"{
  value = module.ec2
}