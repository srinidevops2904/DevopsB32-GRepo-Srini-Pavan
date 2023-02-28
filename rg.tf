# Create a resource group
resource "azurerm_resource_group" "rg1" {
  name     = var.Rgname1
  location = var.Location
  tags = {
    env   = var.Env # var means it will check for varables declaration
    batch = var.Batch
  }
}