
module "network" {
  source  = "github.com/Nagamanidevops/tf-module-vpc"
  
  env = var.env
  for_each = var.vpc
  cidr_block = each.value.cidr_block
  subnets_cidr = var.subnets_cidr
 }
 
