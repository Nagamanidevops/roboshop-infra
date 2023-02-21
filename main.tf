module "network" {
  source = "https://github.com/Nagamanidevops/tf-module-vpc"
  version = "main"
  
#for_each = var.vpc
 # cidr_block = each.value.cidr_block
}