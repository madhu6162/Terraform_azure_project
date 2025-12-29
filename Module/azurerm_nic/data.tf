data "azurerm_subnet" "subnet_data_block" {
  name                 = "frontend"
  virtual_network_name = "vnet12"
  resource_group_name  = "madhu_rg12"
}


data "azurerm_public_ip" "pip" {
  name                = "madhu_pip12"
  resource_group_name = "madhu_rg12"
}