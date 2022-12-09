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

# subnet
cmn_pub_subnet_config = {
  az = "ap-northeast-1a"
  cidr = "10.0.0.0/24"
}

cmn_pub_subnet_tags = {
  name    = "cmn-pub-subnet"
  managed_by = "terraform"
}