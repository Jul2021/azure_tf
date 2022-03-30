resource "azurerm_subnet" "bastion" {
  name                 = "tfdemo-bastion-subnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["172.18.1.0/24"]


}

resource "azurerm_subnet" "web" {
  name                 = "tfdemo-web-subnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["172.18.2.0/24"]

}

resource "azurerm_subnet" "app" {
  name                 = "tfdemo-app-subnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["172.18.15.0/24"]


}


resource "azurerm_subnet" "db" {
  name                 = "tfdemo-db-subnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["172.18.30.0/24"]


}
