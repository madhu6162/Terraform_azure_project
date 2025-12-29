module "azurerm_resource_group" {
  source = "../../Module/azurerm_rg"
  rg     =      var.rg
}

module "vnet" {
  source = "../../Module/azurerm_vnet"
  depends_on = [ module.azurerm_resource_group ]
  vnet = var.vnet
}

module "subnet" {
  source = "../../Module/azurerm_subnet"
  depends_on = [ module.vnet ]
  subnet = var.subnet
  
}

module "stgg" {
  source = "../../Module/azurerm_storage_group"
  depends_on = [ module.azurerm_resource_group ]
  stgg = var.stgg
  
}

module "pip" {
  source = "../../Module/azurerm_pip"
  depends_on = [ module.azurerm_resource_group ]
  pip = var.pip
  
}

module "nic" {
  source = "../../Module/azurerm_nic"
  depends_on = [ module.pip,module.vnet ]
  nic = var.nic
  
}

module "vm" {
  source = "../../Module/azurerm_vm"
  depends_on = [ module.nic ]
  vm = var.vm
  
}