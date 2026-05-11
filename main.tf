
module "connectivity" {
  source  = "Azure/alz/connectivity/azurerm"
  version = "~> 7.2"

  location = "westeurope"

  hub_virtual_networks = {
    hub1 = {
      address_space = ["10.100.0.0/16"]
      firewall = {
        enabled = true
      }
    }
  }
}
