env = "dev"
default_vpc_id = "vpc-00682b9d34c0f8605"

vpc = {
  main = {
    cidr_block   = "10.0.0.0/16"
    public_subnets_cidr = [ "10.0.0.0/24","10.0.1.0/24"]
    private_subnets_cidr = [ "10.0.2.0/24","10.0.3.0/24	"]

  }
}