variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "data_location" {
  type    = string
  default = "United States"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "azure_ad_groups" {
  type    = list(string)
  default = []
}