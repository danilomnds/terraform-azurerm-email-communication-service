locals {
  default_tags = {
    deployedby  = "Terraform"
    provider    = "azr"
    create_date = formatdate("DD/MM/YY hh:mm", timeadd(timestamp(), "-3h"))
  }
  tags = merge(local.default_tags, var.tags)
}