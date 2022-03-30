variable "prefix" {
  type        = string
  default     = "tfdemo"
  description = "Prefix for all the resources"
}

variable "location" {
  type        = string
  default     = "Central India"
  description = "location for primary resoruces"
}

variable "tags" {
  type = map(string)
  default = {
    environment = "Test"
    CostCenter  = "IT_Ops"
    DeployMode  = "Terraform"
  }
  description = "List of tags to be used"
}

variable "vnet_cidr" {
  type    = list(any)
  default = ["172.18.0.0/16"]
}

variable "dns_servers" {
  type    = list(any)
  default = ["172.18.0.4", "172.18.0.5"]
}