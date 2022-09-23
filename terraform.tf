# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.23"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
  }

  # backend "azurerm" {
  #   resource_group_name  = "pratik-terraform"
  #   storage_account_name = "pktfstatecontainer"
  #   container_name       = "largestate"
  #   key                  = "dev.tfstate"
  # }

  cloud {
    organization = "pratik-hc"
    workspaces {
      name = "large-state"
    }
  }

  required_version = ">= 1.1.0"
}
