# vpc
cmn_vpc_config = {
  cidr = "10.0.0.0/16"
  name    = "cmn-vpc"
  managed_by = "terraform"
}

# internet gateway
cmn_igw_config = {
  name    = "cmn-vpc-igw"
  managed_by = "terraform"
}

# route table
cmn_pub_rt_config = {
  name    = "cmn_public_rt"
  managed_by = "terraform"
}

# subnet
# { nametag, az, cidr, managed_bytag }
cmn_pub_subnet_config = {
  cmn-pub-subnet-a = { az = "ap-northeast-1a", cidr = "10.0.0.0/24", managed_by = "terraform"},
  cmn-pub-subnet-c = { az = "ap-northeast-1c", cidr = "10.0.1.0/24", managed_by = "terraform"}
}

#security group
# { nametag, port, source ip, managed_bytag }
sg_config = [
  { name = "cmn_linux_sg",   port = [ 22 ],      src_ip = [ "0.0.0.0/0" ], managed_by = "terraform"},
  { name = "cmn_windows_sg", port = [ 3389 ],    src_ip = [ "0.0.0.0/0" ], managed_by = "terraform"},
  { name = "cmn_web_sg",     port = [ 80, 443 ], src_ip = [ "0.0.0.0/0" ], managed_by = "terraform" }
]

