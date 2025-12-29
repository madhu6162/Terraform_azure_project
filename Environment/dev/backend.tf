terraform {
  backend "azurerm" {
    resource_group_name  = "madhu_rg12"
    storage_account_name = "madhustorage12"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
