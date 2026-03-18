terraform {
  required_version = ">= 1.2.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    # version = "~> 3.68" # or latest stable
    
  }
}


resource "azurerm_resource_group" "example" {
name = "a09-rg"
location = "Canada Central"
}