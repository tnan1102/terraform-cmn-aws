############################
# modules/vpc
############################
# vpc
variable "vpc_config" {
  type = map
}

variable "vpc_tags" {
  type = map
}

# internet gateway
variable "igw_tags" {
  type = map
}

# public subnet
variable "pub_subnet_config" {
  type = list
}
