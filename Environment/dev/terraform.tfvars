rg = {
    rg1={
        resource_group_name ="madhu_rg12"
        location = "CentralIndia"
    }
    }

vnet = {
  vnet1={
  vnet_name = "vnet12"
  location            = "CentralIndia"
  resource_group_name = "madhu_rg12"
  address_space       = ["10.0.0.0/16"]
  }
  
}


subnet ={
  subnet={
    name               = "frontend"
  resource_group_name  = "madhu_rg12"
  virtual_network_name = "vnet12"
  address_prefixes   = ["10.0.1.0/24"]
  }
}

stgg = {
  "storagegroup" = {
    name = "madhustorage12"
    resource_group_name ="madhu_rg12"
    location = "CentralIndia"
    account_tier = "Standard"
    account_replication_type="LRS"
    
  }
}

pip = {
  "pip1" = {
     name                = "madhu_pip12"
  resource_group_name = "madhu_rg12"
  location            = "CentralIndia"
  allocation_method   = "Static"
    
  }
}

nic = {
  "nic1" = {
    name = "madhu_nic12"
    location ="CentralIndia"
    resource_group_name ="madhu_rg12"
    ip_configuration_name = "internal"
  }
}

vm = {
  "vm1" = {
    name                = "vm12"
  resource_group_name =  "madhu_rg12"
  location            =  "CentralIndia"
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  admin_password      = "madhu@123"
    
  }
}