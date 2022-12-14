terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.13.0"
    }

    random = {
      source = "hashicorp/random"
      version = ">= 3.0.1"
    }
  }
  
  backend "azurerm" {}

}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "random" {}
