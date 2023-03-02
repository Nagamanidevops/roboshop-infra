
module "vpc" {
  source  = "github.com/Nagamanidevops/tf-module-vpc"
  
  env = var.env
  default_vpc_id = var.default_vpc_id
  for_each = var.vpc
  cidr_block = each.value.cidr_block
 }
 
 module "subnets" {
  source  = "github.com/Nagamanidevops/tf-module-subnets"
  vpc_id = module.vpc.vpc_id
  
  env = var.env
  default_vpc_id = var.default_vpc_id
  for_each = var.subnets
  cidr_block = each.value.cidr_block
  availability_zone = each.value.availability_zone
 } 
 
 