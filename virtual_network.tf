resource "azurerm_virtual_network" "rg1-vnet1" {
  name                = "${azurerm_resource_group.rg1.name}-Vnet1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = [var.Vnet1_Cidr]

  tags = {
    env   = var.Env           # var means it will check for varables declaration
    batch = var.Batch
  }
}

resource "azurerm_subnet" "rg1-pub-subnet-1" {
  name                 = "${azurerm_resource_group.rg1.name}-Pub-Subnet-1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.rg1-vnet1.name
  address_prefixes     = ["10.1.1.0/24"]
}

