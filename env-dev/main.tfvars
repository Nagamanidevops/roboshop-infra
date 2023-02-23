env = "dev"
default_vpc_id = "vpc-00682b9d34c0f8605"

vpc = {
  main = {
    cidr_block   = "10.0.0.0/16"
    subnets_cidr = [ "10.0.0.0/17","10.0.128.0/17"]
  }
}