
module "network" {
  source  = "github.com/Nagamanidevops/tf-module-vpc"
  
  env = var.env
  default_vpc_id = var.default_vpc_id
  for_each = var.vpc
  cidr_block = each.value.cidr_block
 }
 
