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
variable "pub_subnet_config" {
  type = list
}

############################
# modules/securitygroup
############################
variable "sg_config" {
  type = list
}
