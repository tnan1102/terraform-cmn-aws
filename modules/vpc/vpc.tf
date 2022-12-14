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
resource "aws_subnet" "cmn_pub_subnet" {
  vpc_id = aws_vpc.cmn-vpc.id
  cidr_block = lookup(var.subnet_config, "cidr")
  availability_zone = lookup(var.subnet_config, "az")

  tags = {
    name = lookup(var.subnet_tags, "name")
    managed_by = lookup(var.subnet_tags, "managed_by")
  }
}

output "cmn-vpc_id" {
  value = aws_vpc.cmn-vpc.id
}