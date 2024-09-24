terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {}
  # Azure for Students
  subscription_id = "fb4dfb43-cdf7-4c64-a4af-a404189dece6"
}