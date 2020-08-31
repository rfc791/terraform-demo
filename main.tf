resource "azurerm_resource_group" "demo" {
  name     = "demo-rg"
  location = "Canada Central"
}

module "websrv01" {
  source              = "Azure/compute/azurerm"
  resource_group_name = azurerm_resource_group.demo.name
  vm_os_simple        = "UbuntuServer"
  vnet_subnet_id      = var.server_subnet
}
