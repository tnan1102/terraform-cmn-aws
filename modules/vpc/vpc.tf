# vpc
resource "aws_vpc" "cmn-vpc" {
  cidr_block       = lookup(var.vpc_config, "cidr")
  instance_tenancy = "default"

  tags = {
    Name = lookup(var.vpc_tags, "name")
    managed_by = lookup(var.vpc_tags, "managed_by")
  }
}

# internet gateway
resource "aws_internet_gateway" "cmn-vpc-igw" {
  vpc_id = aws_vpc.cmn-vpc.id

  tags = {
    Name = lookup(var.igw_tags, "name")
    managed_by = lookup(var.igw_tags, "managed_by")
  }
}

resource "aws_subnet" "pub_subnet" {
  for_each = { for i in var.pub_subnet_config : i.name => i }
  vpc_id = aws_vpc.cmn-vpc.id
  availability_zone = each.value.az
  cidr_block = each.value.cidr
  tags = {
    Name = each.value.name
    managed_by = each.value.managed_by
  }
}

output "cmn-vpc_id" {
  value = aws_vpc.cmn-vpc.id
}