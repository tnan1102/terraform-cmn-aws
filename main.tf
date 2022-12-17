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
  pub_subnet_config = var.pub_subnet_config
}

module "security-group" {
  source = "./modules/security-group"

  vpc_id = module.vpc.cmn-vpc_id
  sg_config = var.sg_config
}