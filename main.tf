module "network" {
  source = "https://github.com/Nagamanidevops/tf-module-vpc"
  
  for_each = var.vpc
  cidr_block = each.value.cidr_block
}