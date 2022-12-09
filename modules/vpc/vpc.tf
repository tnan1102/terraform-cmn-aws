# vpc
resource "aws_vpc" "cmn-vpc" {
  cidr_block       = lookup(var.vpc_config, "cidr")
  instance_tenancy = "default"

  tags = {
    name = lookup(var.vpc_tags, "name")
    managed_by = lookup(var.vpc_tags, "managed_by")
  }
}

# internet gateway
resource "aws_internet_gateway" "cmn-vpc-igw" {
  vpc_id = aws_vpc.cmn-vpc.id

  tags = {
    name = lookup(var.igw_tags, "name")
    managed_by = lookup(var.igw_tags, "managed_by")
  }
}