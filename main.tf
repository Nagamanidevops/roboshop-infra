
module "vpc" {
  source  = "github.com/Nagamanidevops/tf-module-vpc"
  
  env = var.env
  default_vpc_id = var.default_vpc_id
  for_each = var.vpc
  cidr_block = each.value.cidr_block
  public_subnets = each.value.public_subnets
  private_subnets = each.value.private_subnets
  availability_zone = each.value.availability_zone
 }
 

module docdb {

  source   = "github.com/Nagamanidevops/tf-module-docdb"
  
  env = var.env
  
  for_each = var.docdb
 
 // subnet_ids = lookup(lookup( lookup(lookup( module.vpc , each.value.vpc_name,null),  "private_subnets_ids",null),each.value.subnet_name,null), "subnet_ids"
//,null)  
  subnet_ids     = lookup(lookup(lookup(lookup(module.vpc, each.value.vpc_name, null), "private_subnet_ids", null), each.value.subnet_name, null), "subnet_ids", null)

}

output "vpc" {
  value = module.vpc
}