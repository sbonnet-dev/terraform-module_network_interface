resource "azurerm_network_interface" "network_interface" {
  name = lower(format("%s%s%s", var.rg_type, var.environment, var.name))

  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}