variable "subscription_id" {
  description = "The ID of the subscription"
  default = "fb4dfb43-cdf7-4c64-a4af-a404189dece6"
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  default = "test-nsg"
}

variable "location" {
  description = "Location of the Network Security Group"
  default = "westeurope"
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  default = "test-rg"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
