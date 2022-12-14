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
variable "subnet_config" {
  type = map
}

variable "subnet_tags" {
  type = map
}
