env = "dev"
default_vpc_id = "vpc-00682b9d34c0f8605"

vpc = {
  main = {
    cidr_block   = "10.0.0.0/16"
    public_subnets_cidr
  }
}

subnets = {

public = {
name = "public"
vpc_name = "main"
cidr_block = ["10.0.0.0/24" , "10.0.1.0/24"]
availability_zone = ["us-east-1a" , "us-east-1b"]
}

web = {
}

db = {
}


}