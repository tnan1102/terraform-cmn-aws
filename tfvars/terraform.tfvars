# vpc
cmn_vpc_config = {
  cidr = "10.0.0.0/16"
}

cmn_vpc_tags = {
  name    = "cmn-vpc"
  managed_by = "terraform"
}

# internet gateway
cmn_igw_tags = {
  name    = "cmn-vpc-igw"
  managed_by = "terraform"
}