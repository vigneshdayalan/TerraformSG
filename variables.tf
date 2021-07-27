variable "sg_ingress_rules" {
  description = "Users public ip to be added in Managed Prefix List"
  type        = map(string)
  default = {
  }
}
