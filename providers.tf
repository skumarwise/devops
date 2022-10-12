terraform {

  required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.9.0"
    }
  }
  
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}
