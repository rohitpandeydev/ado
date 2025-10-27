terraform {
  required_provider {
  azure = {
    source = "hashicorp/azurerm"
    version = "~>5.0"
  }
}
required_version = "~>1.1"
}

provider "azurerm"{
location = "East US"
feature{}
}
