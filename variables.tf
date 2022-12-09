############################
# modules/vpc
############################
# vpc
variable "cmn_vpc_config" {
  type = map
}

variable "cmn_vpc_tags" {
  type = map
}

# internet gateway
variable "cmn_igw_tags" {
  type = map
}

# public subnet
variable "cmn_pub_subnet_config" {
  type = map
}

variable "cmn_pub_subnet_tags" {
  type = map
}

############################
# modules/securitygroup
############################