resource "aws_security_group" "sg" {
  for_each = { for i in var.sg_config : i.name => i }
  name = each.value.name
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = each.value.port
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = each.value.src_ip
    }
  }
  tags = {
    managed_by = lookup(var.sg_tags, "managed_by")
  }
}