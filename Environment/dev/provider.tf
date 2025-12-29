terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "00ad737d-c579-441c-8386-0551f3fc4bf9"
}