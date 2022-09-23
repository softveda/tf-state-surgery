# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.23"
    }
  }

  cloud {
    organization = "pratik-hc"
    workspaces {
      name = "large-state"
    }
  }

  required_version = ">= 1.1.0"
}
