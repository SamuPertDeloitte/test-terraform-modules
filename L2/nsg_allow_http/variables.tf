variable "subscription_id" {
  description = "The ID of the subscription"
}

variable "name" {
  description = "Name of the Network Security Group"
}

variable "location" {
  description = "Location of the Network Security Group"
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
}

variable "tags" {
  type        = map(string)
  default     = {}
}
