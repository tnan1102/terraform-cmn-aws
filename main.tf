###################################
# Provider Settings
###################################
provider "aws" {
  region     = "ap-northeast-1"
}

####################################
# Terraform tfstate
####################################
#resource "aws_dynamodb_table" "cmn_ci_tfstate_lock" {
#  count = 1
#  name           = "cmn_ci_tfstate_lock"
#  read_capacity  = 1
#  write_capacity = 1
#  hash_key       = "LockID"
#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#  lifecycle {
#    ignore_changes = ["read_capacity", "write_capacity"]
#  }
#}

terraform {
  backend "s3" {
    bucket         = "terraform-cmn-ci"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    encrypt        = true
#    dynamodb_table = "cmn_ci_tfstate_lock"
  }
}

module "vpc" {
  source = "./modules/vpc"

  #vpc
  vpc_config = var.cmn_vpc_config
  vpc_tags = var.cmn_vpc_tags

  #internet gateway
  igw_tags = var.cmn_igw_tags

  #public subnet
  subnet_config = var.cmn_pub_subnet_config
  subnet_tags = var.cmn_pub_subnet_tags
}