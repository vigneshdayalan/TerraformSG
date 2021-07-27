resource "aws_ec2_managed_prefix_list" "dev-users-publicip" {
  name           = "All service Public ip's"
  address_family = "IPv4"
  max_entries    = 50
  version        = null

  dynamic "entry" {
    for_each = var.sg_ingress_rules
    iterator = userdetail
    content {
      cidr        = "${userdetail.value}/32"
      description = userdetail.key
    }
  }
}
