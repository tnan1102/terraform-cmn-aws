############################
# modules/securitygroup
############################
variable "vpc_id" {
  type = string
}

variable "sg_config" {
  type = list
}

variable "sg_tags" {
  type = map
}