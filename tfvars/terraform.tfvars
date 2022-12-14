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

#security group
sg_config = [
  { name = "cmn_linux_sg",   port = [ 22 ],      src_ip = [ "0.0.0.0/0" ] },
  { name = "cmn_windows_sg", port = [ 3389 ],    src_ip = [ "0.0.0.0/0" ] },
  { name = "cmn_web_sg",     port = [ 80, 443 ], src_ip = [ "0.0.0.0/0" ] }
]

sg_tags = {
  managed_by = "terraform"
}
